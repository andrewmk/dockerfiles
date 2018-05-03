#!/bin/sh

docker run -it -v `pwd`:/tmp/jekyll -p 4000:4000 alexhaydock/jekyll
