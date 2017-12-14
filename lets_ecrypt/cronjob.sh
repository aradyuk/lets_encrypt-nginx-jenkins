#!/bin/bash

cat <<EOF >> /etc/crontab
0 0 */15 * * $(pwd)/lets_encrypt_renew.sh
EOF

#0 0 */15 * * docker run -t --rm -v certs:/etc/letsencrypt -v certs-data:/data/letsencrypt -v /var/log/letsencrypt:/var/log/letsencrypt deliverous/certbot renew --webroot --webroot-path=/data/letsencrypt && docker kill -s HUP nginx >/dev/null 2>&1


