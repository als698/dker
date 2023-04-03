# Docker Basic

```sh
Usage: dker COMMAND [OPTIONS]

  OPTIONS:
    build [container_name]  -  (re)build container Dockerfile
    compose                 -  docker-compose restart (down and up) only docker-compose.yml
    run [image]             -  run container image
    exec [image]            -  execute container image /bin/sh
    kill                    -  stop and remove all containers
    rmu                     -  remove all untagged images
    rmv                     -  remove all volumes
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

### Windows 
You need to add the directory of `dker.bat` to the system's `PATH` environment variable. Here's how:

1. Download `dker.bat` in a location like C:\Users\YourUsername\bin
2. Open the Start menu and search for "Environment Variables" or "Edit the system environment variables".
3. Click on "Environment Variables" button.
Under "System Variables", scroll down and find the "Path" variable and click "Edit".
4. Click "New" and enter the directory path where your dker.bat file is located (e.g. C:\Users\YourUsername\bin).
Click "OK" on all windows to close them.  

Now you should be able to use the dker.bat script from any command prompt by typing dker followed by a command and its options.