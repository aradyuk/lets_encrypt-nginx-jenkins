#!/bin/bash

echo "Building jenkins master.."
cd jenkins_master && docker build -t jenkins-master .

cd ../

echo "Building jenkins slave.."
cd jenkins_slave && docker build -t jenkins-slave .

