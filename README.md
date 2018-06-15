# dockerfiles
Dockerfiles for use with Docker and Docker Hub.

My Docker Hub page is [here](https://hub.docker.com/u/alexhaydock/) and you can pull `x86_64` containers from there for convenience if you wish.

Most `x86_64` containers are based on Alpine and fixed at a particular version (currently 3.7) for size and stability.

Some containers are also available for the `arm32v7` architecture (Raspberry Pi 2/3). These containers must be built manually as Docker Hub only allows automated builds for `x86_64` at the moment. These containers are generally all based on Ubuntu 18.04 LTS, as there is not yet a base Alpine image which supports `arm32v7`.

### Build Status
**alexhaydock/glances:** [![](https://images.microbadger.com/badges/image/alexhaydock/glances.svg)](https://hub.docker.com/r/alexhaydock/glances "Get your own image badge on microbadger.com")

**alexhaydock/htop:** [![](https://images.microbadger.com/badges/image/alexhaydock/htop.svg)](https://hub.docker.com/r/alexhaydock/htop "Get your own image badge on microbadger.com")

**alexhaydock/jekyll:** [![](https://images.microbadger.com/badges/image/alexhaydock/jekyll.svg)](https://hub.docker.com/r/alexhaydock/jekyll "Get your own image badge on microbadger.com")

**alexhaydock/massarchive:** [![](https://images.microbadger.com/badges/image/alexhaydock/massarchive.svg)](https://hub.docker.com/r/alexhaydock/massarchive "Get your own image badge on microbadger.com")

**alexhaydock/onionscan:** [![](https://images.microbadger.com/badges/image/alexhaydock/onionscan.svg)](https://hub.docker.com/r/alexhaydock/onionscan "Get your own image badge on microbadger.com")

**alexhaydock/texlive:** Work in progress.

**alexhaydock/tor:** [![](https://images.microbadger.com/badges/image/alexhaydock/tor.svg)](https://hub.docker.com/r/alexhaydock/tor "Get your own image badge on microbadger.com")

**alexhaydock/transmission-daemon:** [![](https://images.microbadger.com/badges/image/alexhaydock/transmission-daemon.svg)](https://hub.docker.com/r/alexhaydock/transmission-daemon "Get your own image badge on microbadger.com")

**alexhaydock/tweets_analyzer:** Local build only due to API secrets required. A version is planned which allows secrets to be passed to the container by Docker Compose.
