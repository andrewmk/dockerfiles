FROM alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install Syncthing
    && apk --no-cache add syncthing \
    \
# Create the directories where we're going to keep stuff
    && mkdir /data \
    && mkdir /syncthing

# Do not use a trailing slash in the '-home=' directive!
ENV HOME /data
ENTRYPOINT [ "/usr/bin/syncthing","-no-browser","-gui-address=0.0.0.0:8384","-home=/syncthing" ]