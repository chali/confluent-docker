#!/bin/bash

zookeeper-server-start /etc/kafka/zookeeper.properties > /var/log/kafka/zookeeper.out &
kafka-server-start /etc/kafka/server.properties > /var/log/kafka/server.log &
schema-registry-start /etc/schema-registry/schema-registry.properties > /var/log/kafka/schema-registry.log &

sleep 10

kafka-rest-start > /var/log/kafka/rest.log &

sleep 1

# tail log directory
tail -n 1000 -f /var/log/kafka/*.out