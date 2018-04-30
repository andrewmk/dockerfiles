#!/bin/sh

docker run -d \
    --cap-drop=all \
    --name tor \
    --p 53:5353/udp \
    --p 9050:9050 \
alexhaydock/tor
