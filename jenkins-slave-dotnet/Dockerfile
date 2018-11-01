FROM debian:9.5

RUN apt-get update && apt-get install \
    && apt-get install -y \
    wget \
    git \
    ca-certificates \
    gnupg \
    apt-transport-https

# https://www.microsoft.com/net/download/linux-package-manager/debian9/sdk-current
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg \
    && mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ \
    && wget -q https://packages.microsoft.com/config/debian/9/prod.list \
    && mv prod.list /etc/apt/sources.list.d/microsoft-prod.list \
    && chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg \
    && chown root:root /etc/apt/sources.list.d/microsoft-prod.list \
    && apt-get update \
    && apt-get install -y dotnet-sdk-2.1 nuget

WORKDIR /opt/java
RUN wget https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz \
    && tar -xvf openjdk-11.0.1_linux-x64_bin.tar.gz

WORKDIR /var/jenkins
COPY startup.sh startup.sh
RUN chmod +x startup.sh

ENTRYPOINT [ "bash", "startup.sh" ]
