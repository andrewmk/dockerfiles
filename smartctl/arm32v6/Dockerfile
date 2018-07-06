#
# docker build -t smartctl .
# docker run --privileged --rm smartctl --all /dev/sda
#

FROM arm32v6/alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN apk --no-cache add smartmontools

# Run
ENTRYPOINT ["/usr/sbin/smartctl"]