# Dockerfile for DDCLIENT 

This Docker file to build a container winth ddclien pre-nstalled and configured to use with the [FreeDNS](https://freedns.afraid.org) Dynamic DNS service.

```bash
docker build . -t ddclient/alpine --build-arg DD_USERNAME='' --build-arg DD_PASSWORD='' 
docker run -d --name ddclient --restart=unless-stopped ddclient/alpine
```
