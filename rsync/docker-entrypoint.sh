#!/bin/bash

# If we specified a UID/GID with docker run or compose, change the 'user' user/group to it
[[ "${USERID:-""}" =~ ^[0-9]+$ ]] && usermod -u $USERID -o user
[[ "${GROUPID:-""}" =~ ^[0-9]+$ ]] && groupmod -g $GROUPID -o user

# Start rsync
sudo --preserve-env -u user "/usr/bin/rsync" $@

