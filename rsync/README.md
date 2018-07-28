[![](https://images.microbadger.com/badges/image/alexhaydock/rsync.svg)](https://hub.docker.com/r/alexhaydock/rsync "Badge")

### How to Use
This container is probably best used with a bash alias or function that replaces `rsync` with the following command:
```
docker run --rm -it alexhaydock/rsync
```

You will need to use bind mounts for the directories you wish to move within:
```
docker run --rm -it -v $HOME:$HOME alexhaydock/rsync -avsh --delete $HOME/sourcefolder/ ssh@1.2.3.4:/remote/destination/
```