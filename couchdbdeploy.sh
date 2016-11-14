#!/bin/bash

cd /
apt-get -qq update
apt-get -qq install -y couchdb
curl https://raw.githubusercontent.com/anjayajodha/hospitalrun-frontend/master/script/initcouch.sh | sh 
curl -L https://raw.githubusercontent.com/anjayajodha/hospitalrun-deployment/master/local.ini -o /etc/couchdb/local.ini
service couchdb restart