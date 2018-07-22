# You will want the custom seccomp profile:
#     wget https://raw.githubusercontent.com/jessfraz/dotfiles/master/etc/docker/seccomp/chrome.json -O ~/chrome.json

FROM debian:buster
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Setup Environment for Ubuntu
ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
    \
# Update package list
    && apt-get update \
    \
# Add a package
    && apt-get -y install \
          ca-certificates \
          chromium \
          chromium-l10n \
          fonts-liberation \
          fonts-roboto \
          hicolor-icon-theme \
          libcanberra-gtk-module \
          libexif-dev \
          libgl1-mesa-dri \
          libgl1-mesa-glx \
          libpango1.0-0 \
          libv4l-0 \
          fonts-symbola \
       --no-install-recommends \
    \
# Clear package cache to save space
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ \
    \
# Add 'chromium' user
    && groupadd --system --gid 1000 chromium \
    && useradd --system --uid 1000 --gid chromium -G audio,video chromium \
    && mkdir -p /home/chromium/Downloads \
    && chown -R chromium:chromium /home/chromium

# Run
USER chromium
ENTRYPOINT [ "/usr/bin/chromium","--user-data-dir=/data" ]