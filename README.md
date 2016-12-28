#### simple-proxy

[![Circle CI](https://circleci.com/gh/vektorcloud/simple-proxy.svg?style=svg)](https://circleci.com/gh/vektorcloud/simple-proxy)


Simple container for proxying requests to a single HTTP server with optional basic authentication


    docker run -e SCHEME=https -e SERVER_NAME='my.host.com' -e DOMAIN_NAME=localhost -e BASIC_AUTH='admin:$.....' --rm -ti -p 80:80 nginx-proxy

