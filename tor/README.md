[![](https://images.microbadger.com/badges/image/alexhaydock/tor.svg)](https://hub.docker.com/r/alexhaydock/tor "Badge")

### How to Use
By default, this container when run with the command below will listen for SOCKS5 connections on `Port 9250`, and will listen for DNS queries on `Port 5353`.
```sh
docker-compose up -d --force-recreate
```
