FROM alpine:3.8

# Version
ARG RIPME_VERSION=1.7.59

# Install Deps
RUN apk add --no-cache ca-certificates openjdk8-jre

# Install RipMe
ADD https://github.com/RipMeApp/ripme/releases/download/$RIPME_VERSION/ripme.jar /opt/ripme/ripme.jar

# Run
WORKDIR /opt/ripme
ENTRYPOINT ["java", "-jar", "/opt/ripme/ripme.jar"]
CMD ["--help"]
