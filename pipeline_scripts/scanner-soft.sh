#!/bin/bash
source pipeline_scripts/common.sh
set -x
docker run --rm -v $(pwd):/app aquasec/trivy filesystem /app
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy image $IMAGE_TAG