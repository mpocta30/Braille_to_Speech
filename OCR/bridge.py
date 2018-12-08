import BridgeKeys
import os
import sys
import time

from subprocess import call
from watson_developer_cloud import TextToSpeechV1

text_to_speech = TextToSpeechV1(
    username=BridgeKeys.watson_username,
    password=BridgeKeys.watson_password,
    url=BridgeKeys.watson_url
)

with open('text.txt', 'r') as text_file:
    text = text_file.read().replace('\n', '')  # remove any newline characters

with open('answer.wav', 'wb') as audio_file:
    audio_file.write(
        text_to_speech.synthesize(
            text, 'audio/wav', 'en-GB_KateVoice').get_result().content)

# Play wav file
# linux solution
if sys.platform == 'linux' or sys.platform == 'linux2:':
    call(["aplay", "answer.wav"])
    os.remove('answer.wav')
# windows solution
elif sys.platform == 'win32':
    #import winsound
    #winsound.PlaySound('answer.wav', winsound.SND_ASYNC)
    os.system('start answer.wav')
    # the current system will fail if the file is removed too soon
    #os.remove('answer.wav')
else:
    print('Operating system may not be supported. Please play the answer.wav file manually')
    # do not remove file here
