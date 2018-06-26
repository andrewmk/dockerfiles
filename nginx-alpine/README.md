[![](https://images.microbadger.com/badges/image/alexhaydock/nginx-alpine.svg)](https://hub.docker.com/r/alexhaydock/nginx-alpine "Badge")

This container is based on the official Nginx Alpine image. My branch:
* Changes UID and GID of `nginx` to 1000.
* Enables directory indexing.
* Enabled gzip compression.
* Listens on port `8080` inside the container instead of `80`.

### How to Use
You can create a quick autoindex-capable webserver with a script like the following:
```sh
#!/bin/sh

docker rm nginx

sudo chmod -R 775 "/zpools/archive/priv/www"

docker run -d \
    --name nginx \
    --tmpfs /var/log/nginx \
    -p 80:8080 \
    -v "/zpools/archive/priv/www":"/usr/share/nginx/html":ro \
alexhaydock/nginx-alpine
```

### TODO
This container installs the `shadow` package and changes the UID and GID of the `nginx` user and group to `1000`, which presumably matches the UID/GID of the main user on your host. In future I aim to get nginx running in the container without root permissions.