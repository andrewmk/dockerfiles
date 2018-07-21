# Based on the official Dockerfile at:
#   https://github.com/airsonic/airsonic/blob/master/install/docker/Dockerfile

FROM arm32v6/alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

ARG AIRSONIC_VER="10.1.1"

ENV AIRSONIC_PORT=80 AIRSONIC_DIR=/airsonic CONTEXT_PATH=/

WORKDIR $AIRSONIC_DIR

RUN apk --no-cache add \
      ffmpeg \
      lame \
      bash \
      libressl \
      fontconfig \
      ttf-dejavu \
      ca-certificates \
      tini \
      openjdk8-jre

# Add AirSonic and run script
ADD https://github.com/airsonic/airsonic/releases/download/v${AIRSONIC_VER}/airsonic.war airsonic.war
COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

# Run
EXPOSE $AIRSONIC_PORT
HEALTHCHECK CMD wget -q http://localhost:"$AIRSONIC_PORT""$CONTEXT_PATH"/rest/ping -O /dev/null || exit 1
ENTRYPOINT ["/sbin/tini", "--", "docker-entrypoint.sh"]
