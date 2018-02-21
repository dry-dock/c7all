#!/bin/bash -e
RETHINKDB_VER=2.3.6
echo "================= Installing RethinkDb $RETHINKDB_VER ==================="
wget http://download.rethinkdb.com/centos/7/x86_64/rethinkdb-2.3.6.x86_64.rpm 
sudo yum install -y rethinkdb-2.3.6.x86_64.rpm
