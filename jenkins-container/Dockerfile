FROM jenkins/jenkins:jdk17
USER root

COPY devops.pem /var/jenkins_home/devops.pem

ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
ENV PATH="$PATH:/root/.local/bin"

RUN apt update && apt install -y python3 python3-pip && python3 -m pip install --user ansible boto3
RUN jenkins-plugin-cli --plugins blueocean

