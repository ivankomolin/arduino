FROM ubuntu:18.04 as build

RUN apt-get update

RUN apt-get install -y wget picocom

RUN wget https://downloads.arduino.cc/arduino-cli/arduino-cli-latest-linux64.tar.bz2

RUN tar -xvjf arduino-cli-latest-linux64.tar.bz2

RUN whereis picocom

FROM ubuntu:18.04

COPY --from=build /*.preview-linux64 /usr/bin/arduino-cli
COPY --from=build /usr/bin/picocom /usr/bin/picocom
