FROM alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

COPY docker-entrypoint.sh /usr/bin/

RUN apk --no-cache add rsync openssh-client bash shadow sudo tini

# Add 'user' user and group with IDs of 1000
RUN addgroup -S user \
    && adduser -D -S -s /sbin/nologin -G user user \
    && usermod -u 1000 -o user \
    && groupmod -g 1000 -o user

ENTRYPOINT [ "/sbin/tini", "--", "/usr/bin/docker-entrypoint.sh" ]
