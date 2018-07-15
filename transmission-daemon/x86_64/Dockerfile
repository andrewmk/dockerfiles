FROM alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Add Script
COPY docker-entrypoint.sh /usr/bin/

RUN set -xe \
    \
# Install transmission-daemon and shadow (shadow allows us to use 'usermod' and 'groupmod')
    && apk --no-cache add transmission-daemon bash shadow sudo tini \
    \
# Modify the UID and GID of the automatically-enabled 'transmission' user and group to 1000
    && usermod -u 1000 transmission \
    && groupmod -g 1000 transmission \
    \
# Make a config directory
    && mkdir -p /transmission/config \
    && chmod -R 1777 /transmission \
    \
# Make script executable
    && chmod +x /usr/bin/docker-entrypoint.sh \
    \
# Cleanup
    && rm -rf /tmp/*


# Run
ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/docker-entrypoint.sh"]
