FROM alpine
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN apk update && apk add transmission-daemon

# Create config and download directories to mount into
RUN mkdir -p /transmission/config && \
    chmod -R 1777 /transmission
RUN mkdir -p /zpools/x && \
    chmod -R 1777 /zpools

# Create the startup script
RUN echo "#!/bin/sh" > /transmission/start.sh && \
    echo "/usr/bin/transmission-daemon && sleep 365d" >> /transmission/start.sh && \
    chmod +x /transmission/start.sh

# Environment settings
USER transmission
ENV TRANSMISSION_HOME /transmission/config
WORKDIR /transmission/config

# Run
ENTRYPOINT ["/transmission/start.sh"]
