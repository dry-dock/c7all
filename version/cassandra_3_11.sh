#!/bin/bash -e
echo "================= Installing Cassandra 3.11.2 ==================="
echo "[cassandra]
name=Apache Cassandra
baseurl=https://www.apache.org/dist/cassandra/redhat/311x/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.apache.org/dist/cassandra/KEYS" > /etc/yum.repos.d/cassandra.repo
sudo yum install cassandra
