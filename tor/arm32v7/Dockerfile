FROM arm32v7/ubuntu:18.04
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install Tor
    && apt-get update \
    && apt-get -y install tor \
    \
# Tell Tor to listen for SOCKS5 connections on TCP Port 9250
    && echo "SOCKSPort 0.0.0.0:9250" > /etc/tor/torrc \
    \
# Tell Tor to listen for DNS queries on UDP Port 5353
    && echo "DNSPort 0.0.0.0:5353" >> /etc/tor/torrc \
    \
# Clear package cache to save space
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

# Run
USER debian-tor
ENTRYPOINT ["/usr/sbin/tor"]
