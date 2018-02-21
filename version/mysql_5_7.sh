#!/bin/bash -e
echo "================= Installing MySQL 5.7 ==================="
echo "[mysql57-community]
name=MySQL 5.7 Community Server
baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/7/x86_64/
enabled=1
gpgcheck=0" > /etc/yum.repos.d/mysql-community.repo
sudo yum -y install mysql-community-server \
    mysql-community-client
