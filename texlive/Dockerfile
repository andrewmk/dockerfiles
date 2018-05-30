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
# Clear Apt cache
    && apt-get clean

# Run
ENTRYPOINT ["/bin/bash"]
