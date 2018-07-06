#
# docker build -t glances .
# docker run --rm -it --pid host glances
#

FROM arm32v6/alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN apk --no-cache add glances

CMD [ "glances" ]
