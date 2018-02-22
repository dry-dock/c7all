#!/bin/bash
set -e

export PATH="$PATH:/usr/local/bin/"
declare -a services=( 'cassandra' 'memcached' 'mongodb' 'neo4j' 'rabbitmq' 'redis' 'rethinkdb' 'riak' 'selenium')

for service in "${services[@]}"
  do
    	echo "Starting $service"
        shippable_service $service start

        echo "Stopping $service"
        shippable_service $service stop
done
