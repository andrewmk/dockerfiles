[![](https://images.microbadger.com/badges/image/alexhaydock/wine-stable.svg)](https://hub.docker.com/r/alexhaydock/wine-stable "Badge")

### How to Use
This container is not expected to be used as a container by itself but is intended to be included in a `Dockerfile` for a build that will run a 32-bit Windows executable with WINE.

Include it with:
```dockerfile
FROM alexhaydock/wine-stable
```

or:
```dockerfile
FROM alexhaydock/wine-stable:i386
```