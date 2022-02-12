# Docker Basic

```sh
Usage: dker COMMAND [OPTIONS]

  OPTIONS:
    build [container_name]  -  (re)build container Dockerfile
    compose                 -  docker-compose restart (down and up) only docker-compose.yml
    run [image]             -  run container image
    exec [image]            -  execute container image /bin/sh
    kill                    -  stop and remove all containers and volumes
    rmu                     -  remove all untagged images
    rmf                     -  remove all unused images
    rmfk                    -  remove everything
```
## Install
### Linux
```sh
curl -O https://raw.githubusercontent.com/als698/dker/master/dker && sudo chmod +x dker && sudo cp dker /usr/bin
```

### MacOS
```sh
curl -O https://raw.githubusercontent.com/als698/dker/master/dker && sudo chmod u+x dker && sudo cp dker /usr/local/bin
```
