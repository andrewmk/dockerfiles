FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install Tor
    && apk --no-cache add tor \
    \
# Tell Tor to listen for SOCKS5 connections on TCP Port 9250
    && echo "SOCKSPort 0.0.0.0:9250" > /etc/torrc \
    \
# Tell Tor to listen for DNS queries on UDP Port 5353
    && echo "DNSPort 0.0.0.0:5353" >> /etc/torrc

# Run
USER tor
ENTRYPOINT ["/usr/bin/tor"]
