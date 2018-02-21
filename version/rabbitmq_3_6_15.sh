#!/bin/bash -e
RABBITMQ_VER=3.6.15
echo "================= Installing RabbitMQ $RABBITMQ_VER ==================="
wget https://www.rabbitmq.com/releases/erlang/erlang-19.0.4-1.el7.centos.x86_64.rpm
sudo yum install -y erlang-19.0.4-1.el7.centos.x86_64.rpm
wget https://www.rabbitmq.com/releases/rabbitmq-server/v3.6.15/rabbitmq-server-3.6.15-1.el7.noarch.rpm
sudo rpm --import https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo yum install -y rabbitmq-server-3.6.15-1.el7.noarch.rpm
