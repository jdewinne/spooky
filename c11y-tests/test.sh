#!/bin/bash

set -e

echo "Running a test"

kubectl get pods -A

echo "Test complete"
