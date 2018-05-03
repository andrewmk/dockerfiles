#!/bin/sh
set -u

# Note that on modern systems systemd-resolved will probably
# be listening on port 53 and on Ubuntu in particular
# avahi-daemon will probably be listening on 5353.
#
# For the Tor data port, be aware that the Tor package bundled
# with the Tor Browser Bundle will listen on port 9050.
#
# Listening on the above ports should probably be avoided
# unless you particularly want to deal with any related issues.
DNS_LISTEN_PORT=5300
TOR_LISTEN_PORT=19050

docker rm tor

docker run -d \
    --cap-drop=all \
    --name tor \
    -p $DNS_LISTEN_PORT:5353/udp \
    -p $TOR_LISTEN_PORT:9050 \
alexhaydock/tor
