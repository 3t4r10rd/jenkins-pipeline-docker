FROM ubuntu:18.04
RUN apt update &&\
apt install -y maven git docker.io &&\
apt-get clean
ADD /docker/Dockerfile /home/Dockerfile/
