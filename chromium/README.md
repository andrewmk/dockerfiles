[![](https://images.microbadger.com/badges/image/alexhaydock/chromium.svg)](https://hub.docker.com/r/alexhaydock/chromium "Badge")

Chromium container. Great for Dockerizing desktop web-apps.

### How to Use
An example command to run this container as an app for [WhatsApp Web](https://web.whatsapp.com):
```sh
docker rm whatsapp
docker run -d \
  --memory 512mb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY \
  -v $HOME/Downloads:/home/chromium/Downloads \
  -v whatsapp:/data \
  --security-opt seccomp=$HOME/chrome.json \
  -v /dev/shm:/dev/shm \
  --name whatsapp \
  alexhaydock/chromium --app="https://web.whatsapp.com"
````
