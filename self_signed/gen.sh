#!/bin/bash

openssl req -out ./certs/cert.csr -new -newkey rsa:2048 -nodes -keyout ./certs/key.key

openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout ./certs/key.key -out ./certs/cert.crt

