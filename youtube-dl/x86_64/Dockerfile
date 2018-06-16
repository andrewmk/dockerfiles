# This container uses Alpine Edge to ensure that we always get the latest
# version of youtube-dl, as YouTube change their site and APIs so often.

FROM alpine:edge
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Add a package (--no-cache saves space by creating no local package cache)
    && apk --no-cache add youtube-dl

WORKDIR /tmp/youtube-dl
ENTRYPOINT ["/usr/bin/youtube-dl"]
CMD ["--help"]
