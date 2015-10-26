#!/bin/bash

set -e

docker build -t apache2 /vagrant_data/

for i in {1..100}
do
    docker run -dit apache2 /bin/bash
    (time docker restart `docker ps -l -q`) &>> apache2.log
done
