H1 Dockerfile for DDCLIENT 
***Description***
This Docker files to build a container with ddclient preinstalled and configured to use with https://freedns.afraid.org Dynamic DNS service

```bash
docker build . -t ddclient/alpine --build-arg DD_USERNAME='' --build-arg DD_PASSWORD='' 
docker run -d --name ddclient --restart=unless-stopped ddclient/alpine
```