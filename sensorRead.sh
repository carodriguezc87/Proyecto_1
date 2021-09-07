#!/bin/bash
# This sketch save values reading from temperature sensor (DS18B20), in a new file 

name=$(date +%y-%m-%d)"_TEMPERATURA".csv

# Create a file named "YY-MM-DD_TEMPERATURA.csv"
touch $name  

# Infinity loop
while true; do
  # Takes the sensor temperature from any sensor wich serial begin in "28-" 
  temp=$(cat /sys/bus/w1/devices/28-*/temperature)
  # Divide the temperature in 1000 and save it in a float value
  temp=`echo "scale=3;$temp / 1000"|bc -l` 
  # Append temp value in the file created with "YY MM DD HH:MM:SS, temp value" format
  echo $(date +%y/%m/%d)" "$(date +%H:%M:%S)","$temp" C" >> $name 
  echo "Writing temperature value"
  # Wait 9 seconds before repeat the loop
  sleep 9
done
