#!/bin/bash

domain=unode

docker run -it --rm \
      -v certs:/etc/letsencrypt \
      -v certs-data:/data/letsencrypt \
      deliverous/certbot \
      certonly \
      --webroot --webroot-path=/data/letsencrypt \
      -d $domain -d www.$domain

