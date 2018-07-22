FROM openjdk:10-jre
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install mediainfo
RUN apt-get update && apt-get -y install mediainfo

# Add TMM
ADD /tmm_2.9.12_597414a_linux/ /opt/tmm/

# Run
WORKDIR /opt/tmm
ENTRYPOINT [ "/bin/sh","-c","/opt/tmm/tinyMediaManager.sh && sleep 999d" ]