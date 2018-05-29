FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install transmission-daemon and shadow, then correct our user ID.
## (The shadow package gives us access to the usermod and groupmod commands
## which allow us to change the UID and GID of the 'transmission' user/group).
# In this command we will also create a directory to put our Transmission
# config inside and create our startup script for launching Transmission.
RUN apk update && \
    apk add transmission-daemon shadow && \
    usermod -u 1000 transmission && \
    groupmod -g 1000 transmission && \
    mkdir -p /transmission/config && \
    chmod -R 1777 /transmission && \
    echo "#!/bin/sh" > /transmission/start.sh && \
    echo "/usr/bin/transmission-daemon && sleep 999d" >> /transmission/start.sh && \
    echo "TRANSMISSION_HOME='/transmission/config'" >> /transmission/start.sh && \
    chmod +x /transmission/start.sh

# Run
USER transmission
ENTRYPOINT ["/transmission/start.sh"]
