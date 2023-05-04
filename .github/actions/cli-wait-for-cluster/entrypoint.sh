#!/bin/sh -l

while :
do
    /replicated cluster ls --output=json > clusters.json

    # Does cluster exist?
    IS_EMPTY=$(cat clusters.json | jq --arg clusterid "$CLUSTER_ID" 'isempty(.[] | select(.id==$clusterid))')
    if [ "$IS_EMPTY" = "true" ]; then
        echo "Cluster with id $CLUSTER_ID does not exist"
        exit 1
    fi

    # Is cluster ready?
    CLUSTER_STATUS=$(cat clusters.json | jq -r --arg clusterid "$CLUSTER_ID" '.[] | select(.id==$clusterid) | .status')
    if [ "$CLUSTER_STATUS" = "running" ]; then
        echo "Cluster with id $CLUSTER_ID is running"
        echo "cluster-status=$CLUSTER_STATUS" >> $GITHUB_OUTPUT
        exit 0
    fi

    # Sleep for 5 seconds
    sleep 5
done