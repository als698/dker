@echo off

if "%1"=="build" (
    shift
    docker build --pull --rm -f Dockerfile -t "%1" .
    shift
) else if "%1"=="compose" (
    docker-compose -f "docker-compose.yml" down
    docker-compose -f "docker-compose.yml" up -d --build --force-recreate
    shift
) else if "%1"=="run" (
    shift
    docker stop "%1"
    docker rm "%1"
    docker run -it --name "%1" "%1"
    shift
) else if "%1"=="exec" (
    shift
    docker exec -it "%1" /bin/bash
    shift
) else if "%1"=="kill" (
    docker stop $(docker ps -a -q)
    docker rm -f $(docker ps -a -q)
    shift
) else if "%1"=="rmu" (
    docker rmi $(docker images ^| findstr /B "<none>" ^| awk "{print $3}")
    shift
) else if "%1"=="rmv" (
    docker volume rm $(docker volume ls -q)
    shift
) else if "%1"=="rmf" (
    echo y ^| docker system prune -a
    shift
) else if "%1"=="rmfk" (
    docker rm -f $(docker ps -a -q)
    docker volume rm $(docker volume ls -q)
    echo y ^| docker system prune -a
    shift
) else (
    echo.
    echo Usage: dker COMMAND [OPTIONS]
    echo.
    echo   OPTIONS:
    echo     build [container_name]  -  (re)build container Dockerfile
    echo     compose                 -  docker-compose restart (down and up) only docker-compose.yml
    echo     run [image]             -  run container image
    echo     exec [image]            -  execute container image /bin/bash
    echo     kill                    -  stop and remove all containers
    echo     rmu                     -  remove all untagged images
    echo     rmv                     -  remove all volumes
    echo     rmf                     -  remove all unused images
    echo     rmfk                    -  remove everything
)
