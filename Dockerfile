FROM docker:latest

RUN apk add --no-cache git git-lfs curl

COPY daemon.json /etc/docker/daemon.json
