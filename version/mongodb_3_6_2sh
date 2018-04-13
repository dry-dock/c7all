#!/bin/bash -e
MONGO_VERSION=3.6.2
echo "================= Installing Mongodb 3.6.2 ==================="
echo "[mongodb-org-3.6]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.6/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.6.asc" > /etc/yum.repos.d/mongodb-org.repo
sudo yum install -y mongodb-org="$MONGO_VERSION" \
	mongodb-org-server-"$MONGO_VERSION" \
	mongodb-org-shell-"$MONGO_VERSION" \
	mongodb-org-mongos-"$MONGO_VERSION" \
	mongodb-org-tools-"$MONGO_VERSION"

# Create the data directory
sudo mkdir -p /data/db

# Pin the current version
sudo echo "exclude=mongodb-org,mongodb-org-server,mongodb-org-shell,mongodb-org-mongos,mongodb-org-tools" >> /etc/yum.conf 
