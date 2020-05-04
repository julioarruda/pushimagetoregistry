FROM ubuntu:18.04

RUN apt-get update

RUN apt-get remove docker docker-engine docker.io

RUN apt install docker.io

RUN systemctl enable docker

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]