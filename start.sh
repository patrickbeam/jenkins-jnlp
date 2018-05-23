#!/bin/bash

sudo chown -R jenkins:jenkins /home/jenkins/.ssh

exec java -jar /usr/share/jenkins/slave.jar -jnlpUrl $JENKINS_URL -secret $JENKINS_SECRET -workDir "/home/jenkins"
