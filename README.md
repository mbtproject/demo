# mbt-demo

```sh
# Build and publish container images to docker hub from master branch
DOCKER_USER_ID=[your user id] mbt build branch --in .

# Generate a K8 deployment spec for latest commit in master branch
DOCKER_REGISTRY=hub.docker.com mbt apply branch --to k8_template.yml --in .
```