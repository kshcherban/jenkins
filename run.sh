#!/bin/bash

docker build -t jenkins-master .

docker run -p 127.0.0.1:8080:8080 -d jenkins-master

sleep 10
echo "Login at http://localhost:8080/ with admin:admin"
