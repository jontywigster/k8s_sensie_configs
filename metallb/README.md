# MetalLB Configuration

## Overview
This directory sets up and configures MetalLB using Kustomize.

## Files
- `kustomization.yaml`: Combines all resources, including MetalLB’s installation and custom configurations.
- `namespace.yaml`: Defines the `metallb-system` namespace.
- `metallb.yml`: Contains your custom MetalLB configurations (e.g., IP address pool).
- `apply_metallb.sh`: Script to apply MetalLB.
- `remove_metallb.sh`: Script to remove MetalLB.

## Usage
### Install MetalLB
Run:
```bash
./apply_metallb.sh


repo https://github.com/jontywigster/sensie_build/tree/main installs metallb, so the namespace is already added. However for reuse will include it here