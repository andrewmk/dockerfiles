[![](https://images.microbadger.com/badges/image/alexhaydock/transmission-daemon.svg)](https://microbadger.com/images/alexhaydock/transmission-daemon "Get your own image badge on microbadger.com")

### run.sh
My script for running this container, which you could use to build your own:
```sh
#!/bin/bash
set -eu

TRANSMISSION_CONFIG_DIR="/home/a/TransmissionConf"
TRANSMISSION_DOWNLD_DIR="/home/a/zpools/x"

TRANSMISSION_WEBRPC_PORT="9091"
TRANSMISSION_BTDATA_PORT="31967"

sudo chown -R 100:101 "$TRANSMISSION_CONFIG_DIR"
sudo chown -R $(whoami):101 "$TRANSMISSION_DOWNLD_DIR"
sudo chmod -R 770 "$TRANSMISSION_DOWNLD_DIR"

docker rm transmission

docker run -d \
    --cap-drop=all \
    --name transmission \
    -v "$TRANSMISSION_CONFIG_DIR":"/transmission/config" \
    -v "$TRANSMISSION_DOWNLD_DIR":"/zpools/x" \
    -p "$TRANSMISSION_WEBRPC_PORT":"$TRANSMISSION_WEBRPC_PORT" \
    -p "$TRANSMISSION_BTDATA_PORT:$TRANSMISSION_BTDATA_PORT" \
    -p "$TRANSMISSION_BTDATA_PORT":"$TRANSMISSION_BTDATA_PORT/udp" \
alexhaydock/transmission-daemon
```
