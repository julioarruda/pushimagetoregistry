FROM docker.pkg.github.com/julioarruda/pushimagetoregistry/ubuntu1804:1589062404

RUN apt-get update
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common gnupg wget
RUN wget -qO - https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

RUN apt-get update
RUN apt-get -y install docker-ce