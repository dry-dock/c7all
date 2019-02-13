#!/bin/bash -e

sudo chmod 1777 /tmp

for file in /c7all/version/*.sh;
do
  . $file
done

mkdir -p /var/lib/neo4j/conf
cd /c7all && cp -rf neo4j-server.properties /var/lib/neo4j/conf/

echo "================= Adding mysql cnf ==================="
cd /c7all && cp -rf my.cnf /etc/my.cnf
mysqld --initialize-insecure

POSTGRES_VERSION=11
echo "================= Adding PostgreSQL cnf ==================="
cd /c7all && cp -rf pg_hba.cnf /var/lib/pgsql/"$POSTGRES_VERSION"/data/pg_hba.conf

echo "================= Adding shippable_service ==================="
mkdir -p /usr/local/bin/shippable_services
cp /c7all/services/* /usr/local/bin/shippable_services
mv /usr/local/bin/shippable_services/shippable_service /usr/local/bin/shippable_service

echo "================= Adding packages for shippable_service =================="
wget https://nmap.org/dist/ncat-7.60-1.x86_64.rpm
sudo yum install -y ncat-7.60-1.x86_64.rpm

echo "================= Adding pycrypto ============"
pip install pycrypto

echo "================= Cleaning package lists ==================="
yum clean expire-cache
yum autoremove

