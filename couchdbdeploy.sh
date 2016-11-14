#!/bin/bash

apt-get -qq install -y couchdb
git clone https://github.com/anjayajodha/hospitalrun-deployment.git
curl -L https://raw.githubusercontent.com/HospitalRun/hospitalrun-frontend/master/script/initcouch.sh | sh 
cd ./hospitalrun-deployment
service couchdb stop
cp local.ini /etc/couchdb/local.ini
service couchdb start