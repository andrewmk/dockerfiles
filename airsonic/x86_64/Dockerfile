# Based on the official Dockerfile at:
#   https://github.com/airsonic/airsonic/blob/master/install/docker/Dockerfile

FROM alpine:3.8

LABEL description="Airsonic is a free, web-based media streamer, providing ubiquitious access to your music." \
      url="https://github.com/airsonic/airsonic" \
      version="v10.1.1"

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

COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

COPY airsonic.war airsonic.war

EXPOSE $AIRSONIC_PORT

HEALTHCHECK CMD wget -q http://localhost:"$AIRSONIC_PORT""$CONTEXT_PATH"/rest/ping -O /dev/null || exit 1

ENTRYPOINT ["tini", "--", "run.sh"]