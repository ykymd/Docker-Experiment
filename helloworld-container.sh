#!/bin/bash

set -e

docker pull ubuntu

for i in {1..100}
do
    docker run -dit ubuntu /bin/bash -c "while true; do echo hello world; sleep 1; done"
    (time docker restart `docker ps -l -q`) &>> helloworld.log
done
