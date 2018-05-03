[![](https://images.microbadger.com/badges/image/alexhaydock/jekyll.svg)](https://microbadger.com/images/alexhaydock/jekyll "Get your own image badge on microbadger.com")

### run.sh

Passes the current working directory through to Jekyll in the container.

The user can then run `jekyll serve -H 0.0.0.0` or `jekyll build -H 0.0.0.0`.

```sh
#!/bin/sh

docker run -it -v `pwd`:/tmp/jekyll -p 4000:4000 alexhaydock/jekyll
```
