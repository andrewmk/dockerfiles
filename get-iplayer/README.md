[![](https://images.microbadger.com/badges/image/alexhaydock/get-iplayer.svg)](https://hub.docker.com/r/alexhaydock/get-iplayer "Get your own image badge on microbadger.com")

### How to Use
To download using `get-iplayer` into an iPlayer directory, run something like:
```sh
mkdir -p ~/iPlayer && docker run --rm -it -v ~/iPlayer:/tmp/iPlayer alexhaydock/get-iplayer {URLHERE}
```
