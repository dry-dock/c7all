#!/bin/bash -e
SQLITE_VER=3.27.1
echo "================= Installing sqlite $SQLITE_VER ==================="
wget https://sqlite.org/2019/sqlite-autoconf-3270100.tar.gz
tar xvfz sqlite-autoconf-3270100.tar.gz
cd sqlite-autoconf-3270100
./configure
make
make install
