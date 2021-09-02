# RockIOT demo client

This project is an example on how to connect and communicate with RockIOT platform.

Project is developed using Python language and Paho MQTT client.

It is intended for device developers that will implement similar code into device firmware.

It is still Work In Progress and may be a good way to initiate communication and gather collective feedback!


## Developer environment

Python 3.7 or greater is required, as well as Python pip3.

Setup, create and activate python virtual environment
```
pip3 install virtualenv
virtualenv venv
source venv/bin/activate
```

Then Install requirements to make Pipfile and Pipfile.lock
```
pipenv install -r requirements.txt
```


## Sensor readings format

System expects sensor readings to be in specific format to ingest into the platform. It is possible to generate test payload using provided mqtt_demo_readings.py

Make sure your virtual environment is prepared and activated. Then start python shell
```
(venv) ➜  rockiot_demo git:(main) ✗ python                  
Python 3.7.11 (default, Jul  6 2021, 12:43:19) 
[Clang 12.0.5 (clang-1205.0.22.9)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> 
```
Once in promt, simply import file and call function to get random test payload:
```
>>> import mqtt_demo_readings
>>> mqtt_demo_readings.random_sensor_data('device101','client101')
'{"client_id":"client101","sent_at":"2021-09-02 07:04:40.002703","data":{"temperature":"13.65","humidity":"2.1","NO2":"1.8","SO2":"2.5","PM10":"2.4","PM25":"2.4"}}'
```

## Docker

One can also build and run docker file available in the project root.