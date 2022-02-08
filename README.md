# Docker Basic

```sh
Usage: dker COMMAND [OPTIONS]

  OPTIONS:
    build [container_name]  -  (re)build container Dockerfile
    compose                 -  docker-compose restart (down and up) only docker-compose.yml
    run [image]             -  run container image
    exec [image]            -  execute container image /bin/bash
    kill                    -  stop and remove all containers and volumes
    rmf                     -  remove all unused images
    rmfk                    -  remove anything
```
## Install
### Linux
```sh
curl -O https://raw.githubusercontent.com/als698/dker/master/dker && chmod +x dker && cp dker /usr/bin
```

### MacOS
```sh
curl -O https://raw.githubusercontent.com/als698/dker/master/dker && chmod u+x dker && cp dker /usr/local/bin
```