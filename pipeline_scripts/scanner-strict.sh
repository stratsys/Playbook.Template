#!/bin/bash
source pipeline_scripts/common.sh
set -x
FILE="white-list.rego"
if [ -f "$FILE" ]; then
    scanParams=" --severity=HIGH,CRITICAL --ignore-unfixed --exit-code=127 --ignore-policy=/app/white-list.rego"
else 
    scanParams=" --severity=HIGH,CRITICAL --ignore-unfixed --exit-code=127"
fi

docker run --rm -v $(pwd):/app aquasec/trivy filesystem ${scanParams} /app

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy image ${scanParams} $IMAGE_TAG