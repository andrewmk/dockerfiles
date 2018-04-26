[![](https://images.microbadger.com/badges/image/alexhaydock/transmission-daemon.svg)](https://microbadger.com/images/alexhaydock/transmission-daemon "Get your own image badge on microbadger.com")

```
docker run -d \
    --cap-drop=all \
    --name transmission -v ~/Transmission/config:/transmission/config \
    -v ~/Transmission/downloads:/transmission/downloads \
    -p 9091:9091 \
    -p 31967:31967 -p 31967:31967/udp \
    alexhaydock/transmission-daemon
```
