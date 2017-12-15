#!/bin/bash

if [ ! -d "/var/lib/jenkins" ]; then
  mkdir /var/lib/jenkins
fi

cd ./self_signed
./gen.sh
cd ../

docker-compose up -d
