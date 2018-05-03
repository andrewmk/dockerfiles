#!/bin/sh

echo "Starting Tor..."
test -f /etc/tor/torrc && tor -f /etc/tor/torrc --quiet

echo "Waiting for Tor circuits to stabilize before starting OnionScan..."
sleep 10

echo "Starting OnionScan..."
onionscan $@
