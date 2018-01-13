#### simple-proxy

![circleci][circleci]



Simple container for proxying requests to a single HTTP server with optional basic authentication


    docker run -e SCHEME=https -e SERVER_NAME='my.host.com' -e DOMAIN_NAME=localhost -e BASIC_AUTH='admin:$.....' --rm -ti -p 80:80 nginx-proxy


[circleci]: https://img.shields.io/circleci/project/github/vektorcloud/simple-proxy.svg "simple-proxy"
