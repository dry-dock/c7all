#!/bin/bash -e
POSTGRES_VERSION=10
echo "================= Installing Postgres $POSTGRES_VERSION ==================="
sudo yum install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
sudo yum install -y postgresql10 \
   postgresql11-server
sudo -u postgres /usr/pgsql-10/bin/initdb /var/lib/pgsql/data/
