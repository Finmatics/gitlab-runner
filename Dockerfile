FROM docker:24.0.4

RUN apk add --no-cache git git-lfs curl bash python3

# install gitlab release-cli
RUN curl --location --output /usr/local/bin/release-cli "https://gitlab.com/api/v4/projects/gitlab-org%2Frelease-cli/packages/generic/release-cli/latest/release-cli-linux-amd64" \
    && chmod +x /usr/local/bin/release-cli

# install pre-commit
RUN python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pre-commit \
    && rm -r /root/.cache

COPY daemon.json /etc/docker/daemon.json