#### Build Container ####
FROM alpine:3.8 as builder

RUN apk --no-cache add unzip
ADD https://downloads.rclone.org/rclone-current-linux-amd64.zip rclone.zip
RUN unzip rclone.zip
RUN cd rclone-*-linux-amd64 \
    && cp rclone /usr/bin/
RUN chown root:root /usr/bin/rclone
RUN chmod 755 /usr/bin/rclone


#### Runtime Container ####
FROM alpine:3.8

COPY --from=builder /usr/bin/rclone /usr/bin/rclone
RUN apk --no-cache add ca-certificates

ENTRYPOINT ["/usr/bin/rclone"]
