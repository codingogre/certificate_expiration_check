#!/bin/bash
export SITE_URL="$1"
export SITE_SSL_PORT="443"
echo "Q" | openssl s_client -connect ${SITE_URL}:${SITE_SSL_PORT} \
  -servername ${SITE_URL} 2> /dev/null |  openssl x509 -noout -dates
