```
docker build . -t ddclient/alpine
docker run -d --restart=unless-stopped ddclient/alpine
```