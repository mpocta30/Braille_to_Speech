import BridgeKeys
import os
import sys
import winsound

from subprocess import call
from watson_developer_cloud import TextToSpeechV1

text_to_speech = TextToSpeechV1(
    username=BridgeKeys.watson_username,
    password=BridgeKeys.watson_password,
    url=BridgeKeys.watson_url
)

with open('text.txt', 'r') as text_file:
    text = text_file.read().replace('\n', '')  # remove any newline characters

#with open('answer.wav', 'wb') as audio_file:
#    audio_file.write(
#        text_to_speech.synthesize(
#            text, 'audio/wav', 'en-GB_KateVoice').get_result().content)

# Play wav file
# linux solution
# call(["aplay", "answer.wav"])
# windows solution
winsound.PlaySound('answer.wav', winsound.SND_FILENAME | winsound.SND_ASYNC)
#os.remove('answer.wav')