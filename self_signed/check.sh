#!/bin/bash

openssl x509 -noout -text -in ./certs/cert.crt
openssl rsa -noout -text -in ./certs/key.key
