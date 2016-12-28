FROM quay.io/vektorcloud/nginx:latest

COPY proxy.conf /etc/nginx/conf.d/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx"]
