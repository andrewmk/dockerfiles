FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Add Python package
# (OpenSSL is needed because the requests module uses it for HTTPS connections)
RUN apk update && apk add python2 py2-pip openssl

# Add Python dependencies (See: https://github.com/motherboardgithub/mass_archive)
# (the GH page also mentions json but this isn't needed via pip as it is a core part of Python)
RUN pip install requests archiveis

# Download mass_archive
ADD https://raw.githubusercontent.com/motherboardgithub/mass_archive/master/mass_archive.py /opt/mass_archive.py

# Run
ENTRYPOINT ["python2","/opt/mass_archive.py"]
