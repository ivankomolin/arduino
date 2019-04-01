# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/ivankomolin/docker-arduino/blob/master/Dockerfile)

# How to use this images

### Install core
Example install arduino:avr
See [https://github.com/arduino/arduino-cli#step-4-find-and-install-the-right-core](https://github.com/arduino/arduino-cli#step-4-find-and-install-the-right-core)
```
$ docker run --rm \
	-v ${PWD}/app:/app \
	-v ${HOME}/.arduino15:/root/.arduino15 \
	--device=/dev/ttyUSB0 \
		ivankomolin/arduino \
    bash -c "arduino-cli core update-index && arduino-cli core install arduino:avr"
```
Core will be installed to your home directory ${HOME}/.arduino15

### Compile sketch
Create sketch directory with any text editor in the ./app directory, such as ./app/blink/blink.ino
```
$ docker run --rm \
	-v ${PWD}/app:/app \
	-v ${HOME}/.arduino15:/root/.arduino15 \
	--device=/dev/ttyUSB0 \
		ivankomolin/arduino \
    arduino-cli compile --fqbn arduino:avr:mega /app/blink
```
See [What is the FQBN ?](https://github.com/arduino/arduino-cli#what-is-the-fqbn-for-)

### Upload sketch on device
```
$ docker run --rm \
	-v ${PWD}/app:/app \
	-v ${HOME}/.arduino15:/root/.arduino15 \
	--device=/dev/ttyUSB0 \
		ivankomolin/arduino \
    arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:mega /app/blink
```

### Use picocom for debug COM port
```
$ docker run --rm ivankomolin/arduino picocom -b 115200 /dev/ttyACM0

```

# Advanced usage with Make and environment

See [https://github.com/ivankomolin/docker-arduino-app-blank](https://github.com/ivankomolin/docker-arduino-app-blank)
