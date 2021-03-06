FROM java:8-jdk
MAINTAINER tangmaeshirou

WORKDIR /

ADD docker-solo-compress/azkaban-solo-server.tar.gz /azkaban-solo-server.tar.gz
RUN mv azkaban-solo-server.tar.gz/azkaban-solo-server-3.45.0-14-g8112d337/ ./azkaban-solo-server
RUN rm -r azkaban-solo-server.tar.gz/

EXPOSE 8081

ENTRYPOINT ["/bin/bash"]
