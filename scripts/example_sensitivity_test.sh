#!/bin/bash

# Plays a sequence of 2-second sine wave tones at frequencies from 10 kHz to 90 kHz

freqs=(10000 20000 30000 40000 50000 60000 70000 80000 90000)

for freq in "${freqs[@]}"; do
    echo "Playing tone at ${freq} Hz"
    play -V -r 192000 -n -b 16 -c 2 synth 2 sin "$freq" vol -10dB
	sleep 1
done