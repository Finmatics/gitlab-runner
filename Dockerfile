FROM docker:latest

RUN apk add --no-cache git git-lfs curl bash

# install gitlab release-cli
RUN curl --location --output /usr/local/bin/release-cli "https://gitlab.com/api/v4/projects/gitlab-org%2Frelease-cli/packages/generic/release-cli/latest/release-cli-linux-amd64"
