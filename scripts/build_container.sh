#!/bin/sh

set -ex

echo $MBT_BUILD_COMMIT
docker build -t $DOCKER_USER_ID/mbt-demo-$MBT_MODULE_NAME . &&
docker tag $DOCKER_USER_ID/mbt-demo-$MBT_MODULE_NAME $DOCKER_USER_ID/mbt-demo-$MBT_MODULE_NAME:$MBT_MODULE_VERSION &&
docker login &&
docker push $DOCKER_USER_ID/mbt-demo-$MBT_MODULE_NAME:$MBT_MODULE_VERSION
