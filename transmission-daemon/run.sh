#!/bin/bash
set -eu

TRANSMISSION_CONFIG_DIR="/home/a/TransmissionConf"
TRANSMISSION_DOWNLD_DIR="/home/a/zpools/x"
TRANSMISSION_WEBRPC_PORT="9091"
TRANSMISSION_BTDATA_PORT="31967"

# Set permissions so that files are owned by the same UID that will
# launch Transmission inside the container.
sudo chown -R 1000:1000 "$TRANSMISSION_CONFIG_DIR"
sudo chown -R 1000:1000 "$TRANSMISSION_DOWNLD_DIR"
sudo chmod -R 770 "$TRANSMISSION_DOWNLD_DIR"

docker pull alexhaydock/transmission-daemon
docker rm transmission
docker run -d \
    --cap-drop=ALL \
    --name transmission \
    -v "$TRANSMISSION_CONFIG_DIR":"/transmission/config" \
    -v "$TRANSMISSION_DOWNLD_DIR":"/zpools/x" \
    -p "$TRANSMISSION_WEBRPC_PORT":"$TRANSMISSION_WEBRPC_PORT" \
    -p "$TRANSMISSION_BTDATA_PORT:$TRANSMISSION_BTDATA_PORT" \
    -p "$TRANSMISSION_BTDATA_PORT":"$TRANSMISSION_BTDATA_PORT/udp" \
alexhaydock/transmission-daemon
