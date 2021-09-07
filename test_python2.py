#!/bin/python3
# This sketch makes a GPIO up and down as fast as the machine can do
# Python language using wiringPi library 

# Import RPi.GPIO library and rename as gpio
import wiringpi as wpi

output = 0

# Initialize wirngPi 
wpi.wiringPiSetup()

# Define wPi gpio 0 like output mode
wpi.pinMode(output,1)

# Infinity loop
while True:
    wpi.digitalWrite(output,1)
    wpi.digitalWrite(output,0)

