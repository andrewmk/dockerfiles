#!/bin/sh

xhost local:docker

docker run --rm -it \
    --name jabref \
    -e DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v ~/.Xauthority:/home/user/.Xauthority:ro \
    --net host \
    --ipc host \
    --memory='1g' \
    -v ~/JabRef:/root \
    alexhaydock/jabref
