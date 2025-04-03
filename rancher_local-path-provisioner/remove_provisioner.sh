#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Removing Local Path Provisioner using Kustomize..."
kubectl delete -k "$SCRIPT_DIR/../local-path-provisioner"

echo "Provisioner removed successfully!"
