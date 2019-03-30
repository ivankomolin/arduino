# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/ivankomolin/docker-arduino/blob/master/Dockerfile)

# How to use this images

Running arduino-cli
```
$ docker run --rm ivankomolin/arduino arduino-cli

```

Running picocom
```
$ docker run --rm ivankomolin/arduino picocom -b 115200 /dev/ttyACM0

```

