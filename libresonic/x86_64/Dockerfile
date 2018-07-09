# This setup is based loosely on the container created by LinuxServer.io
# https://github.com/linuxserver/docker-libresonic

# Build Container
FROM alpine:3.8 as builder

ENV TERM=xterm

RUN set -xe \
    \
# Install build dependencies
    && apk --no-cache add  \
      bash \
      git \
      maven \
      openjdk8 \
    \
# Clone source code
    && git clone git://github.com/Libresonic/libresonic.git /usr/src/libresonic \
    && git -C /usr/src/libresonic checkout $(git -C /usr/src/libresonic describe --tags --candidates=1 --abbrev=0) \
    && cd /usr/src/libresonic \
    \
# Build .war file in /usr/src/libresonic/libresonic-main/target/libresonic.war
    && mvn package


# Runtime Container
FROM alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Specify package versions
ARG JETTY_VER="9.3.14.v20161028"

# Set env settings
ENV LIBRE_HOME="/app/libresonic" LIBRE_SETTINGS="/config"

# Copy prebuild files into container and copy our .war file from the builder container
COPY prebuilds/ /prebuilds/
COPY run /app/libresonic/run
COPY --from=builder /usr/src/libresonic/libresonic-main/target/libresonic.war /app/libresonic/libresonic.war

RUN set -xe \
    \
# Install run dependencies
    && apk --no-cache add  \
      curl \
      ffmpeg \
      flac \
      lame \
      openjdk8 \
      openjdk8-jre \
      tar \
      ttf-dejavu \
    \
# Install Jetty-Runner
    && mkdir -p /tmp/jetty \
    && cp /prebuilds/* /tmp/jetty/ \
    && curl -o /tmp/jetty/"jetty-runner-$JETTY_VER".jar -L \
         "https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-runner/${JETTY_VER}/jetty-runner-{$JETTY_VER}.jar" \
    && cd /tmp/jetty \
    && install -m644 -D "jetty-runner-$JETTY_VER.jar" /usr/share/java/jetty-runner.jar \
    && install -m755 -D jetty-runner /usr/bin/jetty-runner \
    \
# Permissions
    && chmod +x /app/libresonic/run \
    \
# Cleanup
    && rm -rf /tmp/*

# Ports
EXPOSE 4040

# Run
WORKDIR /app/libresonic 
ENTRYPOINT [ "/app/libresonic/run" ]