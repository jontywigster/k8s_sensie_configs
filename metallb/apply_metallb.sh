#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo -e "\nApplying MetalLB CRDs"
kubectl apply -k "$SCRIPT_DIR/base/"

echo -e "\nWaiting for CRDs to be ready"
kubectl wait --for=condition=Established crd/ipaddresspools.metallb.io crd/l2advertisements.metallb.io --timeout=60s

# Prompt for IP address range
prompt_for_ip_range() {
    while true; do
        read -p "Enter the IP address range for the MetalLB IP pool (e.g., 192.168.1.100-192.168.1.200): " IP_ADDRESS_POOL
        if [[ -n "$IP_ADDRESS_POOL" ]]; then
            echo "Using IP address range: $IP_ADDRESS_POOL"
            break
        else
            echo "Error: No IP address range provided. Please enter a valid range."
        fi
    done
}

prompt_for_ip_range

echo -e "\nApplying MetalLB overlay"
export IP_ADDRESS_POOL="$IP_ADDRESS_POOL"
kubectl apply -k "$SCRIPT_DIR/overlay/"

