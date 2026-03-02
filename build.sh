#!/bin/bash

# This is how I build it on an M1 Mac and push straight to a target container registry
# You change the target registry and/or remove the --push as needed
#docker buildx build --push --platform linux/amd64 --tag us.icr.io/sweeden/linuxbuild:amd64 .
docker buildx build --platform linux/amd64 --tag luaosslbuild:amd64 .
