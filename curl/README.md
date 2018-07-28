[![](https://images.microbadger.com/badges/image/alexhaydock/curl.svg)](https://hub.docker.com/r/alexhaydock/curl "Badge")

### How to Use
This container is probably best used with a bash alias or function that replaces `curl` with the following command:
```
docker run --rm -it alexhaydock/curl
```

You will need to use bind mounts if you want to download things persistently:
```
docker run --rm -it -v $HOME/curldownloads:/root alexhaydock/curl
```

This container would work quite well to protect your system from using `curl` on sites designed to output directly to your terminal, for example:
```sh
alias cheat="docker run --rm -it alexhaydock/curl cheat.sh"
alias weather="docker run --rm -it alexhaydock/curl wttr.in/london"
```