### How to Use
This is a containerized version of [tweets_analyzer](https://github.com/x0rz/tweets_analyzer).

This Docker container requires a Twitter API secret to be generated so cannot be pushed to Docker Hub.

Visit https://apps.twitter.com/ to generate API keys. Save these in the file `secrets-secret.py` (a template can be found here as `secrets.py`).

After adding the API keys to `secrets-secret.py`, build this Docker container with:
```sh
docker build -t tweets_analyzer .
```

Now you can run this container with (where `username` is the user you wish to analyze):
```sh
docker run -it tweets_analyzer username
```
