# Introduction

This repo builds a docker image to run a squid proxy. The configurations are very lax - so please do not use it for any security-sensitive deployments. This is meant for development use only.

This was inspired by this (project)[https://hub.docker.com/r/sameersbn/squid].

# Build

```bash
docker docker build --tag=squid .
```

## Running

Start Squid using this command. 

```bash
mkdir ~/squid
docker run --name=squid --rm -d -p 8981:3128 -v ~/squid/:/var/cache/squid/ fylehq/squid
```

You should start seeing access logs in ~/squid directory.

## Debugging


```bash
docker run -it --entrypoint=/bin/bash squid
```
