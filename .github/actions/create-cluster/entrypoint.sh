#!/bin/sh -l

/replicated $@ > cluster.json

CLUSTER_ID=$(cat cluster.json | jq -r '.id')
echo "cluster-id=$CLUSTER_ID" >> $GITHUB_OUTPUT