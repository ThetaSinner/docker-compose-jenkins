FROM debian:7.11

RUN apt-get update && apt-get install \
    && apt-get install -y \
    wget \
    git \
    ca-certificates

WORKDIR /opt/java

RUN wget https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz \
    && tar -xvf openjdk-11.0.1_linux-x64_bin.tar.gz

WORKDIR /var/jenkins

COPY startup.sh startup.sh

RUN chmod +x startup.sh

ENTRYPOINT [ "bash", "startup.sh" ]
