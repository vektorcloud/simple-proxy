#!/bin/sh
set -e

echo "$BASIC_AUTH" > /etc/nginx/auth.htpasswd

[ ! -n "$BASIC_AUTH" ] && {
  sed -i "s/auth.*//g" /etc/nginx/conf.d/proxy.conf
}

sed -i "s/SCHEME/${SCHEME:=http}/" /etc/nginx/conf.d/proxy.conf
sed -i "s/SERVER_NAME/${SERVER_NAME:?Need to specify SERVER_NAME}/" /etc/nginx/conf.d/proxy.conf
sed -i "s/DOMAIN_NAME/${DOMAIN_NAME:?Need to specify DOMAIN_NAME}/" /etc/nginx/conf.d/proxy.conf

exec "$@"
