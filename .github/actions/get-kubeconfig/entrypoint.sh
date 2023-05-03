#!/bin/sh -l

/replicated cluster kubeconfig --id $CLUSTER_ID
cat ~/.kube/config
echo "kubeconfig=$(cat ~/.kube/config)" >> $GITHUB_OUTPUT

cat $GITHUB_OUTPUT
