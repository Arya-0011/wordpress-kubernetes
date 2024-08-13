#!/bin/bash

# Directory containing your YAML files
YAML_DIR="./"

# Apply all YAML files
for file in ${YAML_DIR}*.yaml; do
  echo "Applying $file..."
  kubectl apply -f "$file"
done

# Wait for a few seconds to ensure the resources are created
sleep 10

# Display the status of the resources
echo "Fetching the status of pods..."
kubectl get pods

echo "Fetching the status of nodes..."
kubectl get nodes

echo "Fetching the status of replica sets..."
kubectl get replicasets

echo "Fetching the status of storage classes..."
kubectl get storageclass
