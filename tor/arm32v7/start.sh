#!/bin/sh

# Set permissions
chown -R tor:nogroup /etc/tor/torrc
chown -R tor:nogroup /var/lib/tor
chmod -R 700 /var/lib/tor

# Star Tor
/usr/bin/tor -f /etc/tor/torrc