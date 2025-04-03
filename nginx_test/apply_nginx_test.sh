#!/bin/bash

# Ensure the script fails on errors
set -e

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Apply the nginx deployment and service
echo "Applying nginx deployment..."
kubectl apply -f "$SCRIPT_DIR/nginx-deployment.yaml"

echo "Applying nginx service..."
kubectl apply -f "$SCRIPT_DIR/nginx-service.yaml"

echo "Nginx configuration applied successfully!"
