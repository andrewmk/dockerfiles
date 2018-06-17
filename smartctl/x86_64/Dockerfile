# docker run --privileged --rm alexhaydock/smartctl --all /dev/sda

FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install Tor
    && apk --no-cache add smartmontools

# Run
ENTRYPOINT ["/usr/sbin/smartctl"]
