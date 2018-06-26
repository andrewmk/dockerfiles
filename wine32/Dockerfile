# Uses the 32-bit Ubuntu image as we want to run a 32-bit WINE app
FROM i386/ubuntu:18.04
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Setup Environment for Ubuntu
ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
    \
# Update package list and install Wine
    && apt-get update \
    && apt-get -y install wine-stable \
    \
# Clear package cache to save space
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

# Drop to a shell by default. We don't expect a user to actually
# run this container directly, but include it in another Dockerfile
# to build from. 
WORKDIR /root
ENTRYPOINT ["/bin/bash"]