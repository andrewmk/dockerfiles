[![](https://images.microbadger.com/badges/image/alexhaydock/jekyll.svg)](https://microbadger.com/images/alexhaydock/jekyll "Get your own image badge on microbadger.com")


### How to Use
Run this Docker container as follows (passes the current working directory through to Jekyll in the container):

To serve the current directory on http://127.0.0.1:4000 (the `CMD` line in the Dockerfile handles setting the correct listen address):
```sh
docker run -it -v `pwd`:/tmp/jekyll -p 4000:4000 alexhaydock/jekyll
```

To run the Jekyll build process without opening a server:
```sh
docker run -it -v `pwd`:/tmp/jekyll alexhaydock/jekyll build
```

Alternatively, you can save `docker-compose.yml` into the root directory of your Jekyll project and quickly start a Jekyll server with:
```sh
docker-compose up --force-recreate
```
