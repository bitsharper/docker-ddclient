```
docker build . -t ddclient/alpine --build-arg DD_USERNAME='' --build-arg DD_PASSWORD='' 
docker run -d --name ddclient --restart=unless-stopped ddclient/alpine
```