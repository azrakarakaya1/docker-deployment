# Docker Deployment

This project packages two lightweight static web applications — URL Launcher and QR Generator — into a single Dockerized Nginx server. A helper script (build.sh) automates building and running the container.



## Features

- Deploys two mini web applications inside a single Docker container
- Uses Nginx as a fast and lightweight static file server
- Automated build + run with build.sh
- Clean, extendable structure
- Lightweight image using nginx:stable-alpine


## Dockerfile Overview

The Dockerfile:

- Uses Nginx as the base image
- Deletes default Nginx HTML files
- Copies both mini apps into the Nginx directory
- Exposes port 80
- Runs Nginx in the foreground


## Running the Deployment

Use the provided script:

```bash
./build.sh
```

This will:

- Stop any existing container
- Remove old instances
- Build the Docker image
- Run the container on port 8080
- Display URLs to access the apps



## Accessing the Apps

After running the script, open: <strong>http://localhost:8080/</strong>

- URL Launcher: http://localhost:8080/url-launcher/

- QR Generator: http://localhost:8080/qr-generator/

---

### Stopping the Container

```bash
docker stop docker-deployment-container
docker rm docker-deployment-container
```


### Manual Build & Run

```bash
docker build -t docker-deployment .
docker run -d --name docker-deployment-container -p 8080:80 docker-deployment
```
