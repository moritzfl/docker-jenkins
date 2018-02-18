FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common

RUN apt-get update && \
    apt-get --no-install-recommends install -q -y openjdk-8-jdk \
    git \
    subversion \
    texlive-full \
    pandoc \
    python-pygments \
    docker.io \
    maven \
    genisoimage \
    gradle \
    ant && \
    rm -rf /var/lib/apt/lists/*
    
ADD http://mirrors.jenkins-ci.org/war/2.107/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
