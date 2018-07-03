FROM arm32v6/alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

ADD start.sh /opt/start.sh
ADD torrc /etc/tor/torrc

RUN set -xe \
    \
# Install Tor
    && apk --no-cache add tor \
    \
# Set permissions on script
    && chmod +x /opt/start.sh

# Run
ENV HOME "/var/lib/tor"
WORKDIR ["/var/lib/tor"]
ENTRYPOINT ["/opt/start.sh"]