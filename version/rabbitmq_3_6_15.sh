#!/bin/bash -e
RABBITMQ_VER=3.6.15
echo "================= Installing RabbitMQ $RABBITMQ_VER ==================="
sudo yum install erlang
wget https://www.rabbitmq.com/releases/rabbitmq-server/v3.6.15/rabbitmq-server-3.6.15-1.el7.noarch.rpm
sudo rpm --import https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo yum install -y rabbitmq-server-3.6.15-1.el7.noarch.rpm
