[![](https://images.microbadger.com/badges/image/alexhaydock/smartctl.svg)](https://hub.docker.com/r/alexhaydock/smartctl "Badge")

### How to Use
This container is probably best used with a bash alias or function that replaces `smartctl` with something similar to:
```
docker run --rm --privileged alexhaydock/smartctl --all /dev/sda
```
