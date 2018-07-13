FROM arm32v6/alpine:3.8
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Differences from original file I forked this from:
#  - Disabled setting 'socket options'. Recent versions of Samba are well-tuned out of the box.
#  - Set 'hosts allow' and 'hosts deny' accordingly to only allow connections from RFC 1918 defined private neworks.

# Install samba
RUN set -xe \
    \
# Install Samba
    && apk --no-cache add bash samba shadow tini \
    \
# Add Samba Users
    && adduser -D -G users -H -S -g 'Samba User' -h /tmp smbuser \
    \
# Specify Path to Samba Config
    && file="/etc/samba/smb.conf" \
    \
# Change Config Variables to Saner Defaults
    && sed -i 's|^;* *\(log file = \).*|   \1/dev/stdout|' $file && \
    sed -i 's|^;* *\(load printers = \).*|   \1no|' $file && \
    sed -i 's|^;* *\(printcap name = \).*|   \1/dev/null|' $file && \
    sed -i 's|^;* *\(printing = \).*|   \1bsd|' $file && \
    sed -i 's|^;* *\(unix password sync = \).*|   \1no|' $file && \
    sed -i 's|^;* *\(preserve case = \).*|   \1yes|' $file && \
    sed -i 's|^;* *\(short preserve case = \).*|   \1yes|' $file && \
    sed -i 's|^;* *\(default case = \).*|   \1lower|' $file && \
    sed -i '/Share Definitions/,$d' $file && \
    echo '   pam password change = yes' >>$file && \
    echo '   map to guest = bad user' >>$file && \
    echo '   usershare allow guests = yes' >>$file && \
    echo '   create mask = 0664' >>$file && \
    echo '   force create mode = 0664' >>$file && \
    echo '   directory mask = 0775' >>$file && \
    echo '   force directory mode = 0775' >>$file && \
    echo '   force user = smbuser' >>$file && \
    echo '   force group = users' >>$file && \
    echo '   follow symlinks = yes' >>$file && \
    echo '   load printers = no' >>$file && \
    echo '   printing = bsd' >>$file && \
    echo '   printcap name = /dev/null' >>$file && \
    echo '   disable spoolss = yes' >>$file && \
    echo '   strict locking = no' >>$file && \
    echo '   vfs objects = recycle' >>$file && \
    echo '   recycle:keeptree = yes' >>$file && \
    echo '   recycle:versions = yes' >>$file && \
    echo '   min protocol = SMB2' >>$file && \
    echo '   hosts allow = 10.0.0.0/8 172.16.0.0/12 192.168.0.0/16 127.0.0.1' >>$file && \
    echo '   hosts deny = all' >>$file && \
    echo '' >>$file \
    \
# Cleanup
    && rm -rf /tmp/*

# Copy Startup Script (which will take variables passed to the container at runtime)
COPY samba.sh /usr/bin/

# Expose the Ports Needed for smbd (139, 445) and for nmbd (137/udp, 138/udp)
EXPOSE 137/udp 138/udp 139 445

HEALTHCHECK --interval=60s --timeout=15s \
             CMD smbclient -L '\\localhost\' -U 'guest%' -m SMB3

# Store Samba Config in a Volume (Can be overridden with a bind mount)
VOLUME ["/etc/samba"]

ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/samba.sh"]
