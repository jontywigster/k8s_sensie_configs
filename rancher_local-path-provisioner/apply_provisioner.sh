#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Applying Local Path Provisioner..."
kubectl apply -f "$SCRIPT_DIR/deployment.yaml"

echo "Local Path Provisioner applied successfully!"
