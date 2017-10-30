FROM ubuntu:latest

RUN apt-get update
RUN apt install -y curl
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt install -y lsb-release
RUN apt install -y software-properties-common python-software-properties
RUN apt-get install apt-transport-https
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get install -y docker-ce





