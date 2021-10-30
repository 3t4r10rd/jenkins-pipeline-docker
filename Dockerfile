FROM ubuntu:18.04
WORKDIR /home/azureuser/lesson6
RUN apt update &&\
apt install -y tomcat8 
COPY *.war /
WORKDIR target
RUN cp *.war /var/lib/tomcat8/webapps/ &&\
mkdir -p /usr/share/tomcat8/conf &&\
mkdir -p /usr/share/tomcat8/common/classes &&\
mkdir -p /usr/share/tomcat8/server/classes &&\
mkdir -p /usr/share/tomcat8/shared/classes &&\
mkdir -p /usr/share/tomcat8/temp &&\
mkdir -p /usr/share/tomcat8/logs &&\
cp /etc/tomcat8/server.xml /usr/share/tomcat8/conf/server.xml
EXPOSE 8080
ENV CATALINA_BASE /var/lib/tomcat8
CMD  ["/usr/share/tomcat8/bin/catalina.sh", "run"]
