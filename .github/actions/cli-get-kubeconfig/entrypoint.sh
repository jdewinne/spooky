#!/bin/sh -l

/replicated cluster kubeconfig --id $CLUSTER_ID
export KUBECONFIG="$(cat ~/.kube/config)"
echo "kubeconfig<<EOF" >> $GITHUB_OUTPUT
echo "$KUBECONFIG" >> $GITHUB_OUTPUT
echo "EOF" >> $GITHUB_OUTPUT