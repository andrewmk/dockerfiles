#!/bin/bash

# Docker Functions
function docker_purge_all {
  # Cleanly exit running containers
  docker stop $(docker ps -aq 2>/dev/null) 2>/dev/null

  # Delete all the things!
  docker rm $(docker ps -aq 2>/dev/null) 2>/dev/null
  docker rm -v $(docker ps -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images -q 2>/dev/null) 2>/dev/null
  docker network prune -f
  docker volume prune -f
}

function docker_refresh {
  # Run the purge function from above
  docker_purge_all

  # Pull most-used base containers
  docker pull alpine:3.8
  docker pull ubuntu:18.04

  # Pull my most-used containers
  docker pull alexhaydock/get-iplayer
  docker pull alexhaydock/glances
  docker pull alexhaydock/htop
  docker pull alexhaydock/smartctl
  docker pull alexhaydock/wine-stable:i386
  docker pull alexhaydock/youtube-dl
}

# Privileged Container Aliases
alias glances="docker run --rm -it --pid host alexhaydock/glances"
alias htop="docker run --rm -it --pid host alexhaydock/htop"
alias smartctl="docker run --rm --privileged alexhaydock/smartctl"

# General Container Aliases
alias get-iplayer="docker run --rm -it --memory='512m' --cpus='1' -v `pwd`:'/tmp/get-iplayer' alexhaydock/get-iplayer"
alias get_iplayer="docker run --rm -it --memory='512m' --cpus='1' -v `pwd`:'/tmp/get-iplayer' alexhaydock/get-iplayer"
alias massarchive="docker run --rm -it --memory='512m' --cpus='1' alexhaydock/massarchive"
alias onionscan="docker run --rm -it --memory='512m' --cpus='1' alexhaydock/onionscan"
alias youtube-dl="docker run --rm -it --memory='512m' --cpus='1' -v `pwd`:'/tmp/youtube-dl' alexhaydock/youtube-dl"
alias youtube_dl="docker run --rm -it --memory='512m' --cpus='1' -v `pwd`:'/tmp/youtube-dl' alexhaydock/youtube-dl"

# Container Functions
function beet {
  docker run --rm -it \
    --memory='512M' \
    -v '/zpools/archive/arc/music/.beets/':'/opt/.beets/' \
    -v '/zpools/archive/arc/music/Library/':'/opt/library/' \
    -v '/zpools/archive/priv/transmission/RED/':'/zpools/archive/priv/transmission/RED/' \
    alexhaydock/beets "$@"
}

function rclone {
  docker run --rm -it \
    --name rclone \
    --memory='1G' \
    -v "/zpools/archive/priv/docker/rclone":"/root/.config/rclone" \
    -v "/zpools/archive":"/zpools/archive":ro \
    alexhaydock/rclone "$@"
}

function tmm {
  docker run --rm -it \
    --name tinymediamanager \
    -e DISPLAY \
    -v "/tmp/.X11-unix":"/tmp/.X11-unix":ro \
    -v "$HOME/.Xauthority":"/home/user/.Xauthority":ro \
    --net host \
    --ipc host \
    --memory='1G' \
    -v "$HOME/TinyMediaManager/data/":"/opt/tmm/data/" \
    -v "$HOME/TinyMediaManager/cache/":"/opt/tmm/cache/" \
    -v "$HOME/TinyMediaManager/backups/":"/opt/tmm/backups/" \
    -v tmm-media-archive:"/opt/media" \
    alexhaydock/tinymediamanager
}
