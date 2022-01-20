FROM debian:bullseye

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y openjdk-17-jre

RUN useradd -ms /bin/bash jdm
USER jdm
RUN mkdir /home/jdm/minecraft

WORKDIR /home/jdm/minecraft

ENTRYPOINT ./start-server.sh

