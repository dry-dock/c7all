#!/bin/bash -e
SQLITE_VER=3.24.0
echo "================= Installing sqlite $SQLITE_VER ==================="
wget http://sqlite.org/2018/sqlite-autoconf-3240000.tar.gz
tar xvfz sqlite-autoconf-3240000.tar.gz
cd sqlite-autoconf-3240000
./configure
make
make install
