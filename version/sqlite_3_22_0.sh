#!/bin/bash -e
SQLITE_VER=3.22.0
echo "================= Installing sqlite $SQLITE_VER ==================="
wget http://sqlite.org/2018/sqlite-autoconf-3220000.tar.gz
tar xvfz sqlite-autoconf-3220000.tar.gz
cd sqlite-autoconf-3220000
./configure
make
make install
