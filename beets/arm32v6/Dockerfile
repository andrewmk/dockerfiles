FROM arm32v6/alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install Python3
    && apk --no-cache add python3 flac \
    \
# Install Beets
    && python3 -m pip install beets pylast

# Add config
ADD config.yaml /root/.config/beets/config.yaml

# Run
ENTRYPOINT ["/usr/bin/beet"]