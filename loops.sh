#!/bin/bash
for container in api frontend redis postgres
do
    echo "Checking container: $container"

    if docker ps --format '{{.Names}}' | grep -q "^${container}$"; then
        echo "✓ $container is running"
    else
        echo "✗ $container is NOT running"
    fi
done