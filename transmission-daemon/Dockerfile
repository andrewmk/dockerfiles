FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install transmission-daemon and shadow, then correct our user ID.
## (The shadow package gives us access to the usermod and groupmod commands
## which allow us to change the UID and GID of the 'transmission' user/group).
RUN apk update && \
    apk add transmission-daemon shadow && \
    usermod -u 1000 transmission && \
    groupmod -g 1000 transmission

# Create config and download directories to mount into
RUN mkdir -p /transmission/config && chmod -R 1777 /transmission
RUN mkdir -p /zpools/x && chmod -R 1777 /zpools

# Add the startup script
ADD start.sh /transmission/start.sh
RUN chmod +x /transmission/start.sh

# Environment settings
USER transmission
ENV TRANSMISSION_HOME /transmission/config
WORKDIR /transmission/config

# Run
ENTRYPOINT ["/transmission/start.sh"]
