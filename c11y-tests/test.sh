#!/bin/bash

set -e

echo "Running a test"

kubectl get pods -A --kubeconfig /tmp/kubeconfig

echo "Test complete"
