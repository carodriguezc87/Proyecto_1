#!/bin/python3
# This sketch makes a GPIO up and down as fast as the machine can do
# Python language using RPi.GPIO library

# Import RPi.GPIO library and rename as gpio
import RPi.GPIO as gpio

output=17

# Set BCM gpio
gpio.setmode(gpio.BCM)

# Set gpio like output mode
gpio.setup(output,gpio.OUT)

# Infinity loop
while True:
    gpio.output(output,True)
    gpio.output(output,False)