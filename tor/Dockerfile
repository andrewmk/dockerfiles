FROM alpine
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install Tor and add our config
RUN apk update && apk add tor
ADD torrc /etc/tor/torrc

# Environment
USER tor

# Run
ENTRYPOINT ["/usr/bin/tor"]
