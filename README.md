# dockerfiles
Dockerfiles for use with Docker and Docker Hub.

My Docker Hub page is [here](https://hub.docker.com/u/alexhaydock/) and you can pull `x86_64` containers from there for convenience if you wish.

Most `x86_64` containers are based on Alpine and fixed at a particular version (currently 3.7) for size and stability.

Some containers are also available for the `arm32v7` architecture (Raspberry Pi 2/3). These containers must be built manually as Docker Hub only allows automated builds for `x86_64` at the moment. These containers are generally all based on Ubuntu 18.04 LTS, as there is not yet a base Alpine image which supports `arm32v7`.

### Build Status
| Image | Status |
|-------------------------|-------|
| alexhaydock/get-iplayer | [![](https://images.microbadger.com/badges/image/alexhaydock/get-iplayer.svg)](https://hub.docker.com/r/alexhaydock/get-iplayer "Badge") |
| alexhaydock/glances | [![](https://images.microbadger.com/badges/image/alexhaydock/glances.svg)](https://hub.docker.com/r/alexhaydock/glances "Badge") |
| alexhaydock/htop | [![](https://images.microbadger.com/badges/image/alexhaydock/htop.svg)](https://hub.docker.com/r/alexhaydock/htop "Badge") |
| alexhaydock/jekyll | [![](https://images.microbadger.com/badges/image/alexhaydock/jekyll.svg)](https://hub.docker.com/r/alexhaydock/jekyll "Badge") |
| alexhaydock/massarchive | [![](https://images.microbadger.com/badges/image/alexhaydock/massarchive.svg)](https://hub.docker.com/r/alexhaydock/massarchive "Badge") |
| alexhaydock/nginx-alpine | [![](https://images.microbadger.com/badges/image/alexhaydock/nginx-alpine.svg)](https://hub.docker.com/r/alexhaydock/nginx-alpine "Badge") |
| alexhaydock/onionscan | [![](https://images.microbadger.com/badges/image/alexhaydock/onionscan.svg)](https://hub.docker.com/r/alexhaydock/onionscan "Badge") |
| alexhaydock/smartctl | [![](https://images.microbadger.com/badges/image/alexhaydock/smartctl.svg)](https://hub.docker.com/r/alexhaydock/smartctl "Badge") |
| alexhaydock/texlive | Work in progress. |
| alexhaydock/tor | [![](https://images.microbadger.com/badges/image/alexhaydock/tor.svg)](https://hub.docker.com/r/alexhaydock/tor "Badge") |
| alexhaydock/transmission-daemon | [![](https://images.microbadger.com/badges/image/alexhaydock/transmission-daemon.svg)](https://hub.docker.com/r/alexhaydock/transmission-daemon "Badge") |
| alexhaydock/tweets_analyzer | Local build only due to requiring secret API keys. |
| alexhaydock/wine32 | [![](https://images.microbadger.com/badges/image/alexhaydock/wine32.svg)](https://hub.docker.com/r/alexhaydock/wine32 "Badge") |
| alexhaydock/youtube-dl | [![](https://images.microbadger.com/badges/image/alexhaydock/youtube-dl.svg)](https://hub.docker.com/r/alexhaydock/youtube-dl "Badge") |
