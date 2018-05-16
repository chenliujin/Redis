#!/bin/bash

docker run \
  -d \
	--restart=always \
	-p 6379:6379 \
	--name redis \
	redis:3.2.10
