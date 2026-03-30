#!/bin/bash

# Ensure the logs directory exists on the host
mkdir -p /home/ec2-user/my-docker-web/logs

# The "Permission Fix": Make the log folder writable for the container
# We discovered earlier that Nginx crashes if it can't write to this folder
chmod 777 /home/ec2-user/my-docker-web/logs

echo "🚀 Starting Secure Deployment with Persistent Logging..."

# 1. Stop and remove the old container if it exists
# 2>/dev/null hides the error message if the container isn't already running
docker rm -f secure-alpine-lab 2>/dev/null

# 2. Run the hardened Alpine container with the Log Volume mapping
# -v [HOST_PATH]:[CONTAINER_PATH]
docker run -d \
  -p 8080:80 \
  --name secure-alpine-lab \
  -v /home/ec2-user/my-docker-web/logs:/var/log/nginx \
  my-secure-web:alpine

echo "✅ Deployment Complete! Visit your site at port 8080."
echo "📜 Real-time logs are now mirrored to: ~/my-docker-web/logs"#!/bin/bash
