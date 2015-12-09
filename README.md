## Nginx Dockerfile

This repository contains **Dockerfile** of [Nginx](http://nginx.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/fsilva/nginx/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [fsilva/ubuntu](https://hub.docker.com/r/fsilva/ubuntu)

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/fsilva/nginx/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull fsilva/nginx`

   (alternatively, you can build an image from Dockerfile: `docker build -t="fsilva/nginx" github.com/silvamfilipe/docker-nginx`)


### Usage

    docker run -d -p 80:80 fsilva/nginx

#### Attach persistent/shared directories

    docker run -d -p 80:80 -v <html-dir>:/var/www/public fsilva/nginx

After few seconds, open `http://<host>` to see the welcome page.
