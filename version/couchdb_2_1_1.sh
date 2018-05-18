#!/bin/bash -e
echo "================= Installing Couchdb 2.1.1 ==================="
echo "[bintray--apache-couchdb-rpm]
name=bintray--apache-couchdb-rpm
baseurl=http://apache.bintray.com/couchdb-rpm/el7/x86_64/
gpgcheck=0
repo_gpgcheck=0
enabled=1" > /etc/yum.repos.d/bintray-apache-couchdb-rpm.repo
# couchbd is failing if its on this path so moving it to other location 
# https://www.spinics.net/lists/centos/msg169867.html
mv /usr/lib/python2.7/site-packages/urllib3/packages/ssl_match_hostname  /usr/lib/python2.7/site-packages/urllib3/packages/ssl_match_hostname.backup
sudo yum -y install couchdb
