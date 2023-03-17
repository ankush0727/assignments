#!/bin/bash

set -e

#  order of arguments
build_folder=$1
aws_ecr_repository_url_with_tag=$2
aws_region=$3

# Checking aws binay
which aws > /dev/null || { echo 'ERROR: aws-cli is not installed' ; exit 1; }

# Connection to ecr
$(aws ecr get-login --region $aws_region --no-include-email) || { echo 'ERROR: aws ecr login failed' ; exit 1; }

# checking docker binary
which docker > /dev/null && docker ps > /dev/null || { echo 'ERROR: docker is not running' ; exit 1; }

echo "Building $aws_ecr_repository_url_with_tag from $build_folder/Dockerfile"

# Build image
docker build -t $aws_ecr_repository_url_with_tag $build_folder

# Push image to ecr
docker push $aws_ecr_repository_url_with_tag