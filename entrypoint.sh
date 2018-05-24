#!/bin/bash

if [ "$AVD" ]; then
    socat tcp-listen:5555,bind=127.0.0.1,fork tcp:$AVD & SOCAT_PID=$!
fi

java -jar /slave.jar \
    url $JENKINS_URL $JENKINS_SECRET

if [ "$AVD_PID" ]; then
    kill $SOCAT_PID
fi
