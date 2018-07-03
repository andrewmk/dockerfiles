# dockerfiles
Dockerfiles for use with Docker and Docker Hub.

My Docker Hub page is [here](https://hub.docker.com/u/alexhaydock/) and you can pull `x86_64` containers from there for convenience if you wish.

Most `x86_64` containers are based on Alpine and fixed at a particular version (currently 3.7) for size and stability.

Some containers are also intended for use on Raspberry Pi systems. These containers are generally based on the `arm32v6` build of Alpine, as there is not yet a base Alpine image which supports `arm32v7`. These containers must be built locally, as Docker Hub does not offer automated builds for non-x86 architectures.

### Build Status
| Image | Status |
|-------------------------|-------|
| alexhaydock/beets | [![](https://images.microbadger.com/badges/image/alexhaydock/beets.svg)](https://hub.docker.com/r/alexhaydock/beets "Badge") |
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
| alexhaydock/wine-stable | [![](https://images.microbadger.com/badges/image/alexhaydock/wine-stable.svg)](https://hub.docker.com/r/alexhaydock/wine-stable "Badge") |
| alexhaydock/youtube-dl | [![](https://images.microbadger.com/badges/image/alexhaydock/youtube-dl.svg)](https://hub.docker.com/r/alexhaydock/youtube-dl "Badge") |
