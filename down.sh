#!/bin/bash

#if [ -d "/var/lib/jenkins" ]; then
#  rm -r /var/lib/jenkins
#fi

rm -rf ./self_signed/certs/*

docker-compose down
