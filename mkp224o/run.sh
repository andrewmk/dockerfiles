#!/bin/sh

docker run --rm -it \
    --name mkp224o \
    -v "$HOME/mkp224o/filterfile.txt":/filterfile.txt:ro \
    -v "$HOME/mkp224o/results":/tmp \
    alexhaydock/mkp224o -f "/filterfile.txt"