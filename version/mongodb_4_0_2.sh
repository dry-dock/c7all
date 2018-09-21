#!/bin/bash -e
MONGO_VERSION=4.0.2
echo "================= Installing Mongodb 4.0.1 ==================="
echo "[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" > /etc/yum.repos.d/mongodb-org.repo
sudo rpm --import https://www.mongodb.org/static/pgp/server-4.0.asc
sudo yum install -y mongodb-org="$MONGO_VERSION" \
	mongodb-org-server-"$MONGO_VERSION" \
	mongodb-org-shell-"$MONGO_VERSION" \
	mongodb-org-mongos-"$MONGO_VERSION" \
	mongodb-org-tools-"$MONGO_VERSION"

# Create the data directory
sudo mkdir -p /data/db

# Pin the current version
sudo echo "exclude=mongodb-org,mongodb-org-server,mongodb-org-shell,mongodb-org-mongos,mongodb-org-tools" >> /etc/yum.conf
