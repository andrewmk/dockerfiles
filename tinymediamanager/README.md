[![](https://images.microbadger.com/badges/image/alexhaydock/tinymediamanager.svg)](https://hub.docker.com/r/alexhaydock/tinymediamanager "Badge")

### How to Use
An example command to run this container:
```sh
docker run --rm -it \
    --name tinymediamanager \
    -e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v ~/.Xauthority:/home/user/.Xauthority:ro \
    --net host \
	--ipc host \
    --memory='1g' \
    --cpus='2' \
    -v "~/TinyMediaManager/data/":"/opt/tmm/data/" \
    -v "~/TinyMediaManager/cache/":"/opt/tmm/cache/" \
    -v "~/TinyMediaManager/backups/":"/opt/tmm/backups/" \
    -v tmm-media-archive:"/opt/media" \
    tmm
````

### Setup
I configured this container to use a named volume (`tmm-media-archive`) as the volume containing my media. This volume is mounted from a remote system via SSHFS. You can set that up with like so:
```sh
docker plugin install vieux/sshfs
docker volume create -d vieux/sshfs -o sshcmd=asdf@sagan:/zpools/archive/priv/nn -o password=<password> nn
docker volume ls
```

If you aren't using SSHFS to mount your remote volumes, or have your data locally then you don't need to do this and can just use a standard bind mount instead.

### Known Issues
This container will stick open even after the main application has been closed due to a quirk in the way the Java application needs to be launched. To close it, use Ctrl+C or `docker stop tinymediamanager`.