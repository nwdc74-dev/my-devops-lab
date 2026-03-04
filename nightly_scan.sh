#!/bin/bash
# Move to the project directory
cd ~/my-docker-web

# Run the scan and save it with a timestamp
DATE=$(date +%Y-%m-%d)
trivy image --severity HIGH,CRITICAL my-secure-web:alpine > "scans/scan_$DATE.txt"
