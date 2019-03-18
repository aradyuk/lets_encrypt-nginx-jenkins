#!/bin/bash

if [ ! -d "/var/lib/jenkins" ]; then
  mkdir /var/lib/jenkins
fi

if [ ! -d "/home/jenkins" ]; then
  mkdir /home/jenkins
fi

./img_build.sh

cd ./self_signed
./gen.sh
cd ../

docker-compose up -d
