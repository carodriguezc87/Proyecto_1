#!/bin/bash
# This sketch makes a GPIO up and down as fast as the machine can do
# Bash language

# Export the 17 GPIO in /sys/class/gpio direcotry and select ouput mode
gpio export 17 out  

# Infinity loop
while true; do
  echo "1" > /sys/class/gpio/gpio17/value
  echo "0" > /sys/class/gpio/gpio17/value
done
