#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Removing MetalLB with Kustomize..."
kubectl delete -k "$SCRIPT_DIR"

echo "MetalLB removed successfully!"
