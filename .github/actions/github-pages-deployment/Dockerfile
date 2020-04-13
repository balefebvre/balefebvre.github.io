# Container image that runs your code
FROM alpine:3.11
# FROM ubuntu:18.04

RUN apk add curl
# RUN apt install curl

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
