#!/bin/bash

docker stop docker-deployment-container 2>/dev/null
docker rm docker-deployment-container 2>/dev/null

docker build -t docker-deployment .

docker run -d --name docker-deployment-container -p 8080:80 docker-deployment

echo "Container is running. Access your apps at:"
echo "http://localhost:8080/url-launcher/"
echo "http://localhost:8080/qr-generator/"