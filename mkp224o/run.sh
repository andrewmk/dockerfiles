#!/bin/sh

docker run --rm -it \
    --name mkp224o \
    -v "$HOME/mkp224o/filterfile.txt":/filterfile.txt:ro \
    -v "$HOME/mkp224o/results":/tmp \
    alexhaydock/mkp224o -f "/filterfile.txt"

# Find the mkp224o PID inside the container and set it to lowest priority
sudo renice -n 20 $(docker inspect --format '{{.State.Pid}}' mkp224o)
