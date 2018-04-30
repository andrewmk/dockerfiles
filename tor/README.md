[![](https://images.microbadger.com/badges/image/alexhaydock/tor.svg)](https://microbadger.com/images/alexhaydock/tor "Get your own image badge on microbadger.com")

### run.sh
```sh
#!/bin/sh

docker run -d \
    --cap-drop=all \
    --name tor \
    --p 53:5353/udp \
    --p 9050:9050 \
alexhaydock/tor
```
