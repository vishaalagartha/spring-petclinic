FROM jenkins/jenkins:jdk17
USER root

ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
ENV PATH="$PATH:/root/.local/bin"

RUN apt update && apt install -y python3 python3-pip && python3 -m pip install --user ansible
RUN jenkins-plugin-cli --plugins blueocean

