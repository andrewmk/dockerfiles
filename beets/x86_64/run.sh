#!/bin/sh
docker run --rm it \
  --name beets \
  -v /zpools/archive/arc/music/.beets/:/opt/.beets/ \
  -v /zpools/archive/arc/music/Library/:/opt/library/ \
  -v /zpools/archive/priv/newmusic:/zpools/archive/priv/newmusic \
alexhaydock/beets