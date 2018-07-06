#
# docker run --privileged --rm alexhaydock/smartctl --all /dev/sda
#

FROM alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN apk --no-cache add smartmontools

# Run
ENTRYPOINT ["/usr/sbin/smartctl"]