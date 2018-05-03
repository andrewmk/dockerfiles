#!/bin/sh

docker stop $(docker ps -aq 2>/dev/null) 2>/dev/null

docker rm $(docker ps -aq 2>/dev/null) 2>/dev/null
docker rm -v $(docker ps -q 2>/dev/null) 2>/dev/null
docker rmi $(docker images -q 2>/dev/null) 2>/dev/null
