[![](https://images.microbadger.com/badges/image/alexhaydock/htop.svg)](https://hub.docker.com/r/alexhaydock/htop "Badge")

### How to Use
This container is probably best used with a bash alias or function that replaces `htop` with the following command:
```
docker run -d \
  -p 127.0.0.1:8384:8384 \
  -p 22000:22000 \
  alexhaydock/syncthing
```