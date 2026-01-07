#!/bin/bash
echo "=== Trivy Fix Script ==="

# Create cache directory
sudo mkdir -p /var/lib/trivy
sudo chmod 777 /var/lib/trivy

# Set cache directory
export TRIVY_CACHE_DIR=/var/lib/trivy

echo "Cache directory set to: /var/lib/trivy"

# ఒకే లైన్ లో
sudo rm -rf /tmp/* && sudo mount -o remount,size=4G /tmp && trivy image apimage
