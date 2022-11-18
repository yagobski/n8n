#!/bin/bash
# Copyright © 2022, Fluid Data Services. All rights reserved.

DOCKER_CMD=`which docker`
if [ -z "$DOCKER_CMD" ]; then
	echo "Cannot locate docker command, make sure docker is installed"
	exit -1
fi

$DOCKER_CMD build -t n8nio/fluid -f docker/images/n8n-custom/Dockerfile .
