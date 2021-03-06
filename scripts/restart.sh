#!/bin/bash -ex

# kill -SIGINT `cat .pid`
killall node
# PRODUCTION=1 nohup node -max-old-space-size=8192 index.js &
PRODUCTION=1 forever start -a --uid "hapiplugins" --killSignal=SIGTERM -c node index.js
echo $! > .pid