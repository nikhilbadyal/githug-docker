#!/bin/bash

container_name="githug"

# Check if the container exists
if docker ps -a --format '{{.Names}}' | grep -q "^$container_name$"; then
    # Container exists, start it
    docker exec -it "$container_name" sh
else
    # Container does not exist, build the Docker image and run a new container
    docker build -t "$container_name":latest .
    docker run -it --name "$container_name" "$container_name" /bin/sh
fi
