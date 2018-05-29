[![](https://images.microbadger.com/badges/image/alexhaydock/jekyll.svg)](https://microbadger.com/images/alexhaydock/jekyll "Get your own image badge on microbadger.com")

### How to Use (Recommended)
You can save `docker-compose.yml` into the root directory of your Jekyll project and quickly start a Jekyll server with:
```sh
docker-compose up --force-recreate
```

### How to Use (Quick Static Build)
To run the Jekyll build process in the current directory without opening a server:
```sh
docker run -it -v `pwd`:/tmp/jekyll alexhaydock/jekyll build
```
