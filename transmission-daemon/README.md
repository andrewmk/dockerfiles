[![](https://images.microbadger.com/badges/image/alexhaydock/transmission-daemon.svg)](https://microbadger.com/images/alexhaydock/transmission-daemon "Get your own image badge on microbadger.com")

### run.sh
```sh
#!/bin/sh

TRANSMISSION_CONFIG_DIR="/home/user/Transmission/config"
TRANSMISSION_DOWNLD_DIR="/home/user/Transmission/downloads"

TRANSMISSION_WEBRPC_PORT="9091"
TRANSMISSION_BTDATA_PORT="31967"

docker run -d \
    --cap-drop=all \
    --name transmission \
    -v $TRANSMISSION_CONFIG_DIR:/transmission/config \
    -v $TRANSMISSION_DOWNLOAD_DIR:/transmission/downloads \
    -p $TRANSMISSION_WEBUI_PORT:$TRANSMISSION_WEBUI_PORT \
    -p $TRANSMISSION_DATA_PORT:$TRANSMISSION_DATA_PORT \
    -p $TRANSMISSION_DATA_PORT:$TRANSMISSION_DATA_PORT/udp \
    alexhaydock/transmission-daemon
```
