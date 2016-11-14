#!/bin/bash

apt-get -qq install -y couchdb
git clone https://github.com/anjayajodha/hospitalrun-deployment.git
cd ./hospitalrun-deployment
curl -L https://raw.githubusercontent.com/HospitalRun/hospitalrun-frontend/master/script/initcouch.sh | sh 
