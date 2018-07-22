#
# docker run --rm -it --pid host alexhaydock/htop
#

FROM alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN apk --no-cache add htop

ADD htoprc /root/.config/htop/htoprc

CMD [ "/usr/bin/htop" ]
