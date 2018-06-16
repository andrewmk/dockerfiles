[![](https://images.microbadger.com/badges/image/alexhaydock/youtube-dl.svg)](https://hub.docker.com/r/alexhaydock/youtube-dl "Badge")

### How to Use
To download using `youtube-dl` into a YouTube directory, run something like:
```sh
mkdir -p ~/YouTube && docker run --rm -it -v ~/YouTube:/tmp/youtube-dl alexhaydock/youtube-dl {URLHERE}
```
