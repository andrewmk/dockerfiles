FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install Tor and add our config
RUN apk update && apk add tor
ADD torrc /etc/tor/torrc

# Run
USER tor
ENTRYPOINT ["/usr/bin/tor"]
