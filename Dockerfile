FROM centos:7
USER root
EXPOSE 25565
WORKDIR /usr/src/app
RUN yum -y update \
    yum -y upgrade \
    yum -y install java
COPY banned-ips.json . \
    banned-players.json . \
    eula.txt . \
    ops.json . \
    README.md . \
    server.jar . \
    server.properties . \
    usercache.json . \
    whitelist.json .
ADD logs /logs \
    world /world
CMD /usr/bin/java -Xms12g -Xmx12g -jar /usr/src/app/server.jar nogui


