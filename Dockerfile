FROM ubuntu:18.04
RUN apt update &&\
apt install -y maven git docker.io openssh-client &&\
apt-get clean
ADD /docker/Dockerfile /home/Dockerfile/
ADD /docker/id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
