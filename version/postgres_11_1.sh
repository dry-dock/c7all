#!/bin/bash -e
POSTGRES_VERSION=11
echo "================= Installing Postgres $POSTGRES_VERSION ==================="
sudo yum install https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-1-2.noarch.rpm
sudo yum install -y postgresql11 \
   postgresql11-server
sudo -u postgres /usr/pgsql-11/bin/initdb /var/lib/pgsql/data/
