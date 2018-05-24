#!/bin/bash

java -jar /slave.jar -jnlpUrl $JENKINS_URL -secret $JENKINS_SECRET -workDir "/root"
