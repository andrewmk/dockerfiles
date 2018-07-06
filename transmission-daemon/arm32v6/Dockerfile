FROM arm32v6/alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install transmission-daemon and shadow (shadow allows us to use 'usermod' and 'groupmod')
    && apk --no-cache add transmission-daemon shadow \
    \
# Modify the UID and GID of the automatically-enabled 'transmission' user and group to 1000
    && usermod -u 1000 transmission \
    && groupmod -g 1000 transmission \
    \
# Make a config directory
    && mkdir -p /transmission/config \
    && chmod -R 1777 /transmission \
    \
# Create a Transmission startup script and make it executable
    && echo "#!/bin/sh" > /transmission/start.sh \
    && echo "export TRANSMISSION_HOME='/transmission/config'" >> /transmission/start.sh \
    && echo "/usr/bin/transmission-daemon && sleep 999d" >> /transmission/start.sh \
    && chmod +x /transmission/start.sh \
    \
# Remove shadow package to decrease attack surface
    && apk del shadow

# Run
USER transmission
ENTRYPOINT ["/transmission/start.sh"]
