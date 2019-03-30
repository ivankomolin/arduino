# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/ivankomolin/docker-arduino/blob/master/Dockerfile)

# How to use this images

### Running arduino-cli
```
$ docker run --rm ivankomolin/arduino arduino-cli board list

```

### Running picocom
```
$ docker run --rm ivankomolin/arduino picocom -b 115200 /dev/ttyACM0

```

### Used as workstation for developing

See [Example](https://github.com/ivankomolin/docker-arduino-app-blank)