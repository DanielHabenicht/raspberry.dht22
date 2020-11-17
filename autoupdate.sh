#!/bin/bash

{ # This forces the whole script to be loaded so it can be overwritten later on

# Update the Sensor script
wget --quiet --spider https://raw.githubusercontent.com/DanielHabenicht/raspberry.dht22/main/sensor.py
if [ $? -eq 0 ] ; then
    # If the file exists download and overwrite
    wget -O sensor.py https://raw.githubusercontent.com/DanielHabenicht/raspberry.dht22/main/sensor.py
fi

# Update the autoupdate script itself
wget --quiet --spider https://raw.githubusercontent.com/DanielHabenicht/raspberry.dht22/main/autoupdate.sh
if [ $? -eq 0 ] ; then
    # If the file exists download and overwrite
    wget -O autoupdate.sh https://raw.githubusercontent.com/DanielHabenicht/raspberry.dht22/main/autoupdate.sh
fi
chmod u+x autoupdate.sh

chmod +x sensor.py
python3 ./sensor.py

}
