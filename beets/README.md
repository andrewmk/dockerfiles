[![](https://images.microbadger.com/badges/image/alexhaydock/beets.svg)](https://hub.docker.com/r/alexhaydock/beets "Badge")

### How to Use
To use this container, I recommend adding a function to be loaded as part of your `~/.bashrc` that does something like the following:
```sh
function beet {
    docker run --rm it \
        --name beets \
        -v /zpools/archive/arc/music/.beets/:/opt/.beets/ \
        -v /zpools/archive/arc/music/Library/:/opt/library/ \
        -v /zpools/archive/priv/newmusic/:/zpools/archive/priv/newmusic/ \
        alexhaydock/beets
    }
```

Now you can use Beets with the `beet` command as described in the Beets documentation. The caveat will be that Beets will only be able to access the files and folders which you specifically pass to it with the `-v` flags in this function. (But after all, that kind of security is part of why you're using Docker, right?)