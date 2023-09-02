# Gitlab Runner

Small project to just provide an image based on `docker:latest` with installed packages:

- `git`
- `curl`

NOTE: now set explicitly to `docker:24.0.4` instead of `docker:latest`.  
This was done as current latest `24.0.5` updated the docker-compose to [v2.20.2](https://github.com/docker/docker-ce-packaging/pull/924)
which might be a source of issues with builds using docker-compose. If confirmed we have to create a github issue for that and wait for a newer version to switch to latests, otherwise we stay behind.