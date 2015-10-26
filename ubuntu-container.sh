#!/bin/bash

set -e

docker pull ubuntu

for i in {1..100}
do
    docker run -dit ubuntu /bin/bash
    (time docker restart `docker ps -l -q`) &>> ubuntu.log
done
