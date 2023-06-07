#!/bin/bash

set -e

echo "Running a test"
sleep 60
kubectl port-forward svc/relmatrix-app --pod-running-timeout=2m --kubeconfig='./kubeconfig.yaml' 8080:80 &
sleep 120
curl -f http://localhost:8080
echo "Test complete"