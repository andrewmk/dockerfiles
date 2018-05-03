FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Environment
# (sets variable to tell Go to install packages into
# an area that's in our default $PATH.
ENV GOPATH /usr/local

# Install Package Deps
RUN apk update && \
    apk add build-base git go tor

# Install Go Deps
RUN go get github.com/HouzuoGuo/tiedot
RUN go get golang.org/x/crypto/openpgp
RUN go get golang.org/x/net/proxy
RUN go get golang.org/x/net/html
RUN go get github.com/rwcarlsen/goexif/exif
RUN go get github.com/rwcarlsen/goexif/tiff

# Install OnionScan
RUN go get github.com/s-rah/onionscan

# Configure Tor to run in the background
RUN echo "RunAsDaemon 1" > /etc/tor/torrc

# Add run script
ADD start.sh /opt/start.sh
RUN chmod +x /opt/start.sh

# Run as the Tor user so we can actually launch
# the Tor binary.
RUN mkdir /opt/onionscan && chown -R tor /opt/onionscan
WORKDIR /opt/onionscan
USER tor

# Entrypoint
# (this script passes arguments given to the Docker command
# straight to the OnionScan binary. If no argument is given
# then CMD will apply and OnionScan will run a scan of the
# DuckDuckGo hidden service).
ENTRYPOINT ["/opt/start.sh"]
CMD ["3g2upl4pq6kufc4m.onion"]
