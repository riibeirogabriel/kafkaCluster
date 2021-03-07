#!/bin/bash

echo "--------------------------------------------------------------------"
echo "Kafka HelloWorld"
echo "--------------------------------------------------------------------"

docker-compose build

echo "--------------------------------------------------------------------"
echo "Adding the microservice images in docker daemon security exception..."
echo "--------------------------------------------------------------------"

echo '{
  "insecure-registries" : ["myregistry:5050"]
}
' > /etc/docker/daemon.json

echo "--------------------------------------------------------------------"
echo "Restarting docker service..."
echo "--------------------------------------------------------------------"

service docker restart

echo "--------------------------------------------------------------------"
echo "Deploying microservices in swarm cluster..."
echo "--------------------------------------------------------------------"

docker stack deploy --compose-file=docker-compose.yml microservice

echo "--------------------------------------------------------------------"
echo "Pushing the microservice images in local repository..."
echo "--------------------------------------------------------------------"

sleep 30

kafka_repository=127.0.0.1:5050/kafka


echo "--------------------------------------------------------------------"
echo "Pushing kafka image..."
echo "--------------------------------------------------------------------"
docker push $kafka_repository