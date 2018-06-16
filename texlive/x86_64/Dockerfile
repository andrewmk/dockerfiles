FROM ubuntu:18.04
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Setup Environment for Ubuntu
ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
    \
# Install TeX Live
    && apt-get update \
    && apt-get -y install texlive-full \
    \
# Clear package cache to save space
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

# Run
ENTRYPOINT ["/bin/bash"]
