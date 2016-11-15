#!/bin/bash

cd /
apt-get -qq update
apt-get -qq install -y couchdb
curl https://raw.githubusercontent.com/anjayajodha/hospitalrun-frontend/master/script/initcouch.sh | sh 
curl -X PUT http://couchadmin:test@localhost:5984/_config/couch_httpd_oauth/use_users_db -d '"true"'
curl -X PUT http://couchadmin:test@localhost:5984/_users/org.couchdb.user:hradmin -d '{"name": "hradmin", "password": "test", "roles": ["System Administrator","admin","user"], "type": "user", "userPrefix": "p1"}'
curl -L https://raw.githubusercontent.com/anjayajodha/hospitalrun-deployment/master/local.ini -o /etc/couchdb/local.ini
service couchdb restart