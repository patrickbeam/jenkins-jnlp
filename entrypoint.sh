#!/bin/bash

if [ "$AVD" ]; then
    socat tcp-listen:5555,bind=127.0.0.1,fork tcp:$AVD & SOCAT_PID=$!
fi

java -jar /slave.jar \
    -secret $JENKINS_SECRET \
    -name $JENKINS_SLAVE_NAME \
    -executors $JENKINS_SLAVE_WORKERS \
    -master $JENKINS_URL \

if [ "$AVD_PID" ]; then
    kill $SOCAT_PID
fi
