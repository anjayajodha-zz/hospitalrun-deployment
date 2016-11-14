#!/bin/bash

cd /
apt-get -qq update
apt-get -qq install -y couchdb
curl -L https://raw.githubusercontent.com/HospitalRun/hospitalrun-frontend/master/script/initcouch.sh | sh 
service couchdb stop
curl -L https://raw.githubusercontent.com/anjayajodha/hospitalrun-deployment/master/local.ini -o /etc/couchdb/local.ini
service couchdb start