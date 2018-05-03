FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install Transmission
RUN apk update && \
    apk add transmission-daemon

# Create config and download directories to mount into
RUN mkdir -p /transmission/config && \
    chmod -R 1777 /transmission
RUN mkdir -p /zpools/x && \
    chmod -R 1777 /zpools

# Add the startup script
ADD start.sh /transmission/start.sh
RUN chmod +x /transmission/start.sh

# Environment settings
USER transmission
ENV TRANSMISSION_HOME /transmission/config
WORKDIR /transmission/config

# Run
ENTRYPOINT ["/transmission/start.sh"]
