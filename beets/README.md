[![](https://images.microbadger.com/badges/image/alexhaydock/beets.svg)](https://hub.docker.com/r/alexhaydock/beets "Badge")

### How to Use
To use this container, I recommend adding a function to be loaded as part of your `~/.bashrc` that does something like the following:

(In this example I have used the `--memory` and `--cpus` flags to constrain the container to using a maximum of 512MB RAM and 1 full CPU core. This is because Beets is a huge Python script and I intend to run this on my main NAS. Python scripts can sometimes go rogue and we can use Docker to make sure it can never interfere with the main system.)
```sh
function beet {
    docker run --rm it \
        --memory='512m' \
        --cpus='1' \
        -v '/zpools/archive/arc/music/.beets/':'/opt/.beets/' \
        -v '/zpools/archive/arc/music/Library/':'/opt/library/' \
        -v '/zpools/archive/priv/newmusic/':'/zpools/archive/priv/newmusic/' \
        alexhaydock/beets $@
    }
```

Now you can use Beets with the `beet` command as described in the Beets documentation. The caveat will be that Beets will only be able to access the files and folders which you specifically pass to it with the `-v` flags in this function. (But after all, that kind of security is part of why you're using Docker, right?)