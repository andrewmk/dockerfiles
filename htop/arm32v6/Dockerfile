#
# docker build -t htop .
# docker run --rm -it --pid host htop
#

FROM arm32v6/alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN apk --no-cache add htop

CMD [ "htop" ]
