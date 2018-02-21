#!/bin/bash -e
RIAK_VER=2.2.3
echo "================= Installing riak $RIAK_VER ==================="
wget --content-disposition https://packagecloud.io/basho/riak/packages/el/7/riak-2.2.3-1.el7.centos.x86_64.rpm/download.rpm 
sudo yum install -y riak-2.2.3-1.el7.centos.x86_64.rpm
