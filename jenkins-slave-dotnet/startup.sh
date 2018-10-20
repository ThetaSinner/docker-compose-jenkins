#!/bin/bash

wget http://172.21.0.3:8080/jnlpJars/agent.jar

/opt/java/jdk-11.0.1/bin/java -jar /var/jenkins/agent.jar -jnlpUrl http://172.21.0.3:8080/computer/dotnet-slave/slave-agent.jnlp -secret 9f783519dbdc5eb91f69447d7714f8d08a0a0ad8f761f342d43672225cc943ec -workDir "/var/jenkins"
