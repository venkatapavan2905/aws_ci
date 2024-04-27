#!bin/bash
set -e

docker pull venkatapavan29/simple-python-flask-app

docker run -d -p 5000:5000 venkatapavan29/simple-python-flask-app

