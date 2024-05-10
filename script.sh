#!/bin/bash
for i in {1..20}; do
    port=$((8080 + i))
    docker run -d -p $port:80 --name apache-php-app-container-$i apache-php-app-image
done
