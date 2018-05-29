FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# About the packages installed in this Docker image:
# (gcc needed to install our packages with pip later)
# (musl-dev and python2-dev provide headers needed to build the pip packages)

# Copy tweets_analyzer into container
ADD tweets_analyzer.py /opt/tweets_analyzer.py
ADD requirements.txt /opt/requirements.txt

# Add secrets file (DO NOT UPLOAD TO GITHUB)
ADD secrets-secret.py /opt/secrets.py

RUN set -xe \
    \
# Install Ruby and the build packages we need
    && apk update \
    && apk add python2 python2-dev py2-pip gcc musl-dev \
    \
# Link locale.h to xlocale.h (Fixes issue with xlocale.h missing during pip install)
    && ln -s /usr/include/locale.h /usr/include/xlocale.h \
    \
# Add Python dependencies
    && pip install -r /opt/requirements.txt

# Run
# (If no arguments are provided by the user then CMD applies and we will scan the @openrightsgroup user)
ENTRYPOINT ["python2","/opt/tweets_analyzer.py","--name"]
CMD ["openrightsgroup"]
