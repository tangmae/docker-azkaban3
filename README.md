## Azkaban 3 Dockerfiles
This is Dockerfiles for build azkaban 3 solo server

This repository contains **Dockerfiles** of [Azkaban](http://azkaban.github.io/) for [Docker](https://www.docker.com/).

### Base Docker Image
* Official [java:8-jdk](https://registry.hub.docker.com/_/java/)

### Build image & Start container

```bash
docker image build -t azkaban-solo-server:1.0 .
docker run -it -p 8081:8081 --name some-azkaban -d azkaban-solo-server:1.0
```

Start & Stop Azkaban Solo Server
```bash
docker exec some-azkaban bin/start-solo.sh
docker exec some-azkaban bin/shutdown-solo.sh
```
