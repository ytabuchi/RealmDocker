FROM ubuntu:latest

MAINTAINER ytabuchi

RUN apt-get update && \
    apt-get install -y curl && \
    curl -s https://packagecloud.io/install/repositories/realm/realm/script.deb.sh | bash && \
    apt-get install -y realm-object-server-developer

EXPOSE 9080

CMD ["/usr/bin/realm-object-server", "-c", "/etc/realm/configuration.yml"]
