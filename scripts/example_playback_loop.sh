#!/bin/bash

sleep 600  # Wait 10 minutes (600 seconds)

for i in {1..10}
do
    play /media/jourjine/STICK/example_playback_condition.wav 
    if [ $i -lt 10 ]; then
        sleep 600  # Wait 10 minutes (600 seconds) before the next playback, except after the last one
    fi
done