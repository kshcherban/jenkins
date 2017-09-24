FROM jenkins/jenkins:lts-alpine

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN install-plugins.sh `cat /usr/share/jenkins/plugins.txt`

ADD seed-job/ /usr/share/jenkins/ref/jobs/_seed-job

ENV ADMIN_USERNAME admin
ENV DEFAULT_ADMIN_PASSWORD admin
ENV ADMIN_PASSWORD $DEFAULT_ADMIN_PASSWORD

COPY init_scripts/*.groovy  /usr/share/jenkins/ref/init.groovy.d/
