#!/bin/bash

set -e

echo "Running a test"
sleep 60
kubectl port-forward svc/tmp-relmatrix-relmatrix-app --pod-running-timeout=2m 8080:80 &
sleep 120
curl -f http://localhost:8080
echo "Test complete"