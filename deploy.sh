#!/bin/bash

echo "🚀 Starting Secure Deployment..."

# 1. Stop and remove the old container if it exists
docker rm -f secure-alpine-lab 2>/dev/null

# 2. Run the hardened Alpine container with resource limits
docker run -d \
  -p 8080:80 \
  --name secure-alpine-lab \
  --memory="256m" \
  --cpus="0.5" \
  my-secure-web:alpine

echo "✅ Deployment Complete! Visit your site at port 8080."
