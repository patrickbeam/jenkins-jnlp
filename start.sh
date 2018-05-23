#!/bin/bash

chown -R jenkins:jenkins /home/jenkins/.ssh

exec jenkins-slave -url $JENKINS_URL $JENKINS_SECRET $JENKINS_AGENT_NAME 
