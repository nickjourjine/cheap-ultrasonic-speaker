#!/bin/bash

# Plays an audio file 10 times with 10 minute intervals between each playback, after waiting 10 minutes.
# Replace /path/to/your_ultrasound_recording.wav with the path to your own audio file.

sleep 600  # Wait 10 minutes (600 seconds)

for i in {1..10}
do
    play /path/to/your_ultrasound_recording.wav 
    if [ $i -lt 10 ]; then
        sleep 600  # Wait 10 minutes (600 seconds) before the next playback, except after the last one
    fi
done