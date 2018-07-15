#!/bin/bash

# Set config location
export TRANSMISSION_HOME='/transmission/config'

# If we specified a UID/GID with docker run or compose, change the Transmission user/group to it
[[ "${USERID:-""}" =~ ^[0-9]+$ ]] && usermod -u $USERID -o transmission
[[ "${GROUPID:-""}" =~ ^[0-9]+$ ]] && groupmod -g $GROUPID -o transmission

# Make sure we can actually read the config
chown -R "$USERID":"$GROUPID" "$TRANSMISSION_HOME"

# Start Transmission
sudo --preserve-env -u transmission "/usr/bin/transmission-daemon" && sleep 999d
