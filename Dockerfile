FROM docker:27.1

RUN apk add --no-cache git git-lfs curl bash python3 jq

# install gitlab release-cli
RUN curl --location --output /usr/local/bin/release-cli "https://gitlab.com/api/v4/projects/gitlab-org%2Frelease-cli/packages/generic/release-cli/latest/release-cli-linux-amd64" \
    && chmod +x /usr/local/bin/release-cli

# install pre-commit
RUN curl https://github.com/pre-commit/pre-commit/releases/download/v3.8.0/pre-commit-3.8.0.pyz -L -o /usr/local/bin/pre-commit.pyz \
    && echo '#!/bin/sh' > /usr/local/bin/pre-commit \
    && echo 'python3 /usr/local/bin/pre-commit.pyz "$@"' >> /usr/local/bin/pre-commit \
    && chmod +x /usr/local/bin/pre-commit

COPY daemon.json /etc/docker/daemon.json