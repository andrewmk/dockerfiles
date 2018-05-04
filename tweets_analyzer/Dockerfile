FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Add Python package
# (gcc needed to install our packages with pip later)
# (musl-dev and python2-dev provide headers needed to build the pip packages)
RUN apk update && apk add python2 python2-dev py2-pip gcc musl-dev

# Add tweets_analyzer
ADD tweets_analyzer.py /opt/tweets_analyzer.py
ADD requirements.txt /opt/requirements.txt

# Link locale.h to xlocale.h
# (Fixes issue with xlocale.h missing during pip install)
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

# Add Python dependencies
RUN pip install -r /opt/requirements.txt

# Add secrets file (DO NOT UPLOAD TO GITHUB)
ADD secrets-secret.py /opt/secrets.py

# Run
ENTRYPOINT ["python2","/opt/tweets_analyzer.py","--name"]

# Default argument to pass to the script if the user specifies none
CMD ["openrightsgroup"]
