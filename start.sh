#!/bin/bash

chown -R jenkins:jenkins /home/jenkins/.ssh

exec jenkins-slave
