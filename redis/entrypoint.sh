#!/bin/bash

sed -i "s/REDIS_UPSTREAM_IP/${REDIS_UPSTREAM_IP}/" /data/redis.conf
sed -i "s/REDIS_UPSTREAM_PORT/${REDIS_UPSTREAM_PORT}/" /data/redis.conf
sed -i "s/REDIS_UPSTREAM_PASSWORD/${REDIS_UPSTREAM_PASSWORD//&/\\&}/" /data/redis.conf
redis-server /data/redis.conf
