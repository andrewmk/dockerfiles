FROM ubuntu:18.04
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Setup Environment for Ubuntu
ENV DEBIAN_FRONTEND noninteractive

# Install TeX Live
RUN apt-get update
RUN apt-get -y install texlive-full

# Run
ENTRYPOINT ["/bin/bash"]
