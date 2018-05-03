[![](https://images.microbadger.com/badges/image/alexhaydock/onionscan.svg)](https://microbadger.com/images/alexhaydock/onionsite.onion "Get your own image badge on microbadger.com")

### How to Use
Run this Docker container as follows (where `onionsite.onion` is the onion service you wish to scan):
```sh
docker run -it alexhaydock/onionscan onionsite.onion
```

If no onion site is provided, the container will default to scanning the DuckDuckGo onion service, at `3g2upl4pq6kufc4m.onion`.
