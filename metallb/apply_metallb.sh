#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Applying MetalLB with Kustomize..."
kubectl apply -k "$SCRIPT_DIR"

echo "MetalLB installed and configured successfully!"
