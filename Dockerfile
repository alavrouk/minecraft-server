FROM centos:7
USER root
WORKDIR /usr/src/app
EXPOSE 25565
RUN yum -y update
RUN yum -y upgrade
RUN yum -y install java
COPY banned-ips.json .
COPY banned-players.json .
COPY eula.txt .
COPY ops.json .
COPY README.md .
COPY server.jar .
COPY server.properties .
COPY usercache.json .
COPY whitelist.json .
ADD logs /logs
ADD world /world
CMD /usr/bin/java -Xms12g -Xmx12g -jar /usr/src/app/server.jar nogui


