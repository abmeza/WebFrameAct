from flask import Flask, render_template, url_for, flash, redirect
from flask_behind_proxy import FlaskBehindProxy
from forms import RegistrationForm, LoginForm
import secrets
from flask_sqlalchemy import SQLAlchemy
from audioCode import printWAV
import time, random, threading
from turbo_flask import Turbo
from markupsafe import escape


# Set up app for 
app = Flask(__name__)  # Give flask name of file
#proxied = FlaskBehindProxy(app)
# print(secrets.token_hex(16))
app.config['SECRET_KEY'] = 'ddceab38b9f340c6971645af5b9ab8e6' 
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)


# Establish general variables for audio
interval=10
FILE_NAME = "Weird_Derek_Sivers.wav"

# Create turbo app instance
turbo = Turbo(app)


# Class that models a user and their paramaters
# Used for handling database information
class User(db.Model):
  id = db.Column(db.Integer, primary_key=True)
  username = db.Column(db.String(20), unique=True, nullable=False)
  email = db.Column(db.String(120), unique=True, nullable=False)
  password = db.Column(db.String(60), nullable=False)

  def __repr__(self):
    return f"User('{self.username}', '{self.email}', '{self.password}')"



@app.route("/")
@app.route("/intro")
def intro():
    subtitle = [
        'Welcome to the website',
        'Navigation Info',
        'My Favorite Color',
        'My Least Favorite'
    ]
    text = [
        'This is some text to introduce you to our website. Hopefullt you' +
        'Understand it and feel now very well introduced',
        
        'This is navigation information. You will be able to access tabs' +
        'to go to all the random pages that are yet to be created' +
        '. Login first to see them all though. Or else it is a no go',
        
        'I don\'t have one. I should but oh well it is whatever.',
        
        'Here are extra llines to test the line break',
        
        'Did they work?',
        
        'Will now test some preformatted text \n and see\n\n how it looks'
    ]
    return render_template('intro.html', 
                           title='Introduction Page', 
                           subtitle=subtitle,
                           text=text)


@app.route("/login", methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit(): # checks if entries are valid
        login_user = User.query.filter_by(username=form.username.data).first()
        
        # Username does not exist
        if login_user is None:
            flash(f'Username {form.username.data} does not exist!', 'danger')
            return render_template('login.html', title='Login', form=form)
        
        #Incorrect Password
        if login_user.password != form.password.data:
            flash(f'Incorrect password ', 'danger')
            return render_template('login.html', title='Login', form=form)
        
        # Successful Login
        flash(f'{form.username.data} successfully logged in!', 'success')
        return redirect(url_for('home')) # if so - send to home page
        
    return render_template('login.html', title='Login', form=form)



@app.route("/home")
def home():
    return render_template('home.html', title='Home Page', subtitle='Hub for the website')


@app.route("/second_page")
def second_page():
    return render_template('second_page.html', subtitle='Second Page', text='This is the second page')


@app.route("/about")
def about():
    return render_template('about.html', subtitle='About Page', text='This is the about page with more information')

    
@app.route("/register", methods=['GET', 'POST'])
def register():
    form = RegistrationForm()
    if form.validate_on_submit(): # checks if entries are valid
        
        # Check database if username is already in use
        exist_user = User.query.filter_by(username=form.username.data).first()
        if exist_user is not None:
            flash(f'Username {exist_user.username} is already taken', 'danger')
            return render_template('register.html', title='Register', form=form)
        
        # Check database if email is already in use
        exist_user = User.query.filter_by(email=form.email.data).first()
        if exist_user is not None:
            flash(f'Email {exist_user.email} is already taken', 'danger')
            return render_template('register.html', title='Register', form=form)
        
        # User can be registered
        user = User(username=form.username.data, email=form.email.data, password=form.password.data)
        db.session.add(user)
        db.session.commit()
        
        flash(f'Account created for {form.username.data}!', 'success')
        return redirect(url_for('login'))   # Successfully registered now login
    return render_template('register.html', title='Register', form=form)

    
@app.route("/captions")
def captions():
    TITLE = "Weird, or just different? | Derek Sivers"
    return render_template('captions.html', songName=TITLE, file=FILE_NAME)



# TESTING FUN
# Allows us to use variable inputs
# @app.route("/<name>")
# def hello(name):
#    return f"Hello, {escape(name)}!"


@app.before_first_request
def before_first_request():
    #resetting time stamp file to 0
    file = open("pos.txt","w") 
    file.write(str(0))
    file.close()

    #starting thread that will time updates
    threading.Thread(target=update_captions, daemon=True).start()


@app.context_processor
def inject_load():
    # getting previous time stamp
    file = open("pos.txt","r")
    pos = int(file.read())
    file.close()

    # writing next time stamp
    file = open("pos.txt","w")
    file.write(str(pos+interval))
    file.close()

    #returning captions
    return {'caption':printWAV(FILE_NAME, pos=pos, clip=interval)}

def update_captions():
    with app.app_context():
        while True:
            # timing thread waiting for the interval
            time.sleep(interval)

            # forcefully updating captionsPane with caption
            turbo.push(turbo.replace(render_template('captionsPane.html'), 'load'))
  
if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0")
    
    
########################
# Handy Resource Links #
########################

# Colors:
# https://www.colorschemer.com/hex-color-codes/
#
# Flask documentiation:
# https://flask.palletsprojects.com/en/2.0.x/
#
# Basic jinja documentation:
# https://jinja.palletsprojects.com/en/3.0.x/templates/