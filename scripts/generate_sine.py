# function generates output.wav to play

import numpy as np
import wave
# Written by Dr. Manu Madhav, University of British Columbia, code modified from https://realpython.com/python-wav-files/

FRAMES_PER_SECOND = 192000

def sound_wave(frequency, amplitude, num_seconds):
    time = np.arange(0, num_seconds, 1 / FRAMES_PER_SECOND)
    amplitude = np.sin(2 * np.pi * frequency * time)
    return np.clip(
        np.round(amplitude * 32768),
        -32768,
        32767,
    ).astype("<h")

left_channel = sound_wave(25000, 0.01, 2.5) #play 25 kHz tone
right_channel = sound_wave(25000, 0.01, 2.5)
stereo_frames = np.dstack((left_channel,right_channel)).flatten()

with wave.open("output.wav", mode="wb") as wav_file:
    wav_file.setnchannels(2)
    wav_file.setsampwidth(2)
    wav_file.setframerate(FRAMES_PER_SECOND)
    wav_file.writeframes(stereo_frames)
