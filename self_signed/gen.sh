#!/bin/bash

if [ ! -d "./certs" ]; then
  mkdir ./certs
fi

openssl req \
        -out ./certs/cert.csr \
        -newkey rsa:2048 -nodes -keyout ./certs/key.key \
        -subj "/C=BY/ST=Minsk/L=Minsk/O=OWN Company/CN=local_vm"

openssl req \
       -newkey rsa:2048 -nodes -keyout ./certs/key.key \
       -x509 -days 365 -out ./certs/cert.crt \
       -subj "/C=BY/ST=Minsk/L=Minsk/O=OWN Company/CN=local_vm"

if [[ -f "./certs/cert.crt" && "./certs/key.key" ]]; then
printf "\n Coin toss"
  cat ./certs/key.key >> ./certs/cert.crt
  head -21 ./certs/cert.crt >> ./certs/key.key
fi

