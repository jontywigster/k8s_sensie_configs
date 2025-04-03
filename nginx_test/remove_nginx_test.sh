#!/bin/bash

# Ensure the script fails on errors
set -e

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Delete the nginx service and deployment
echo "Deleting nginx service..."
kubectl delete -f "$SCRIPT_DIR/nginx-service.yaml" --ignore-not-found

echo "Deleting nginx deployment..."
kubectl delete -f "$SCRIPT_DIR/nginx-deployment.yaml" --ignore-not-found

echo "Nginx configuration removed successfully!"
