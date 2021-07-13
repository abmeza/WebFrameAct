import speech_recognition as sr

from os import path
FILE_NAME = "static/Weird_Derek_Sivers.wav"
AUDIO_FILE = path.join(path.dirname(path.realpath(__file__)), FILE_NAME)

r = sr.Recognizer()

time = 0 # position in track
dur = 10 # clip length to process each iteration

with sr.AudioFile(AUDIO_FILE) as source:
    while time < source.DURATION:
        audio = r.record(source, duration=dur, offset=time)  # read the audio file 1 clip at a time
        # recognize speech using Google Speech Recognition
        try:
            print("From " + str(time) + " - " + str(time + dur) + " : " + r.recognize_google(audio))
        except sr.UnknownValueError:
            print("Could not understand audio")
        except sr.RequestError as e:
            print("Could not request results; {0}".format(e))
        time+=dur # move to next clip