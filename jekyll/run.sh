#!/bin/sh

docker run -it -v `pwd`:/tmp -p 4000:4000 alexhaydock/jekyll
