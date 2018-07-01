FROM arm32v7/ubuntu:18.04
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

ADD start.sh /opt/start.sh
ADD torrc /etc/tor/torrc

RUN set -xe \
    \
# Install Tor
    && apt-get update \
    && apt-get -y install tor \
    \
# Set permissions on script
    && chmod +x /opt/start.sh \
    \
# Clear package cache to save space
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

# Run
ENV HOME "/var/lib/tor"
WORKDIR ["/var/lib/tor"]
ENTRYPOINT ["/usr/sbin/tor"]
