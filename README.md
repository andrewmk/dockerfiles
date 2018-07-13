# Dockerfiles
These are my Dockerfiles for use with Docker and Docker Hub.

My Docker Hub page is [here](https://hub.docker.com/u/alexhaydock/) and you can pull `x86_64` containers from there for convenience if you wish.

Most of my containers are based on Alpine Linux and fixed at a particular version (currently `alpine:3.8`) for size and stability. **I do not use base images which are not part of the official [Docker Library](https://github.com/docker-library/official-images).**

Some containers are also intended for use on Raspberry Pi systems. These containers are generally based on the `arm32v6` build of Alpine, as there is not yet a base Alpine image which supports `arm32v7`. These containers must be built locally, as Docker Hub does not offer automated builds for non-x86 architectures.

### Build Status
| Image                           | Base                  | Arch                        | Status                                                                                                                                                   |
|---------------------------------|-----------------------|-----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| alexhaydock/airsonic            | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/airsonic.svg)](https://hub.docker.com/r/alexhaydock/airsonic "Badge")                       |
| alexhaydock/beets               | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/beets.svg)](https://hub.docker.com/r/alexhaydock/beets "Badge")                             |
| alexhaydock/chromium            | `debian:10`           | `arm32v7`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/chromium.svg)](https://hub.docker.com/r/alexhaydock/chromium "Badge")                       |
| alexhaydock/get-iplayer         | `ubuntu:18.04`        | `arm32v7`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/get-iplayer.svg)](https://hub.docker.com/r/alexhaydock/get-iplayer "Badge")                 |
| alexhaydock/glances             | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/glances.svg)](https://hub.docker.com/r/alexhaydock/glances "Badge")                         |
| alexhaydock/htop                | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/htop.svg)](https://hub.docker.com/r/alexhaydock/htop "Badge")                               |
| alexhaydock/jekyll              | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/jekyll.svg)](https://hub.docker.com/r/alexhaydock/jekyll "Badge")                           |
| alexhaydock/massarchive         | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/massarchive.svg)](https://hub.docker.com/r/alexhaydock/massarchive "Badge")                 |
| alexhaydock/nginx-alpine        | `nginx:stable-alpine` | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/nginx-alpine.svg)](https://hub.docker.com/r/alexhaydock/nginx-alpine "Badge")               |
| alexhaydock/onionscan           | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/onionscan.svg)](https://hub.docker.com/r/alexhaydock/onionscan "Badge")                     |
| alexhaydock/samba               | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/samba.svg)(https://hub.docker.com/r/alexhaydock/samba "Badge") |
| alexhaydock/smartctl            | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/smartctl.svg)](https://hub.docker.com/r/alexhaydock/smartctl "Badge")                       |
| alexhaydock/tinymediamanager    | `openjdk:10-jre`      | `x86_64`                    | [![](https://images.microbadger.com/badges/image/alexhaydock/tinymediamanager.svg)](https://hub.docker.com/r/alexhaydock/tinymediamanager "Badge")       |
| alexhaydock/tor                 | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/tor.svg)](https://hub.docker.com/r/alexhaydock/tor "Badge")                                 |
| alexhaydock/transmission-daemon | `alpine:3.8`          | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/transmission-daemon.svg)](https://hub.docker.com/r/alexhaydock/transmission-daemon "Badge") |
| alexhaydock/tweets_analyzer     | `alpine:3.8`          | `arm32v6`, `x86_64`         | Local build only due to requiring secret API keys.                                                                                                       |
| alexhaydock/wine-stable         | `ubuntu:18.04`        | `i386`, `arm32v7`, `x86_64` | [![](https://images.microbadger.com/badges/image/alexhaydock/wine-stable.svg)](https://hub.docker.com/r/alexhaydock/wine-stable "Badge")                 |
| alexhaydock/youtube-dl          | `alpine:edge`         | `arm32v6`, `x86_64`         | [![](https://images.microbadger.com/badges/image/alexhaydock/youtube-dl.svg)](https://hub.docker.com/r/alexhaydock/youtube-dl "Badge")                   |
