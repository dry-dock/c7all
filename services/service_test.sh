#!/bin/bash -e

declare -a services=( 'cassandra' 'memcached' 'mongodb' 'neo4j' 'rabbitmq' 'redis' 'rethinkdb' 'riak' 'selenium' 'elasticsearch' 'couchdb' 'mysql'  'postgres')

for service in "${services[@]}"
  do
	echo "Starting $service"
	./shippable_services $service start
	
	echo "Stopping $service"
	./shippable_services $service stop
done 
