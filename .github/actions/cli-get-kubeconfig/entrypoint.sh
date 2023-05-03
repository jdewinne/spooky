#!/bin/sh -l

/replicated cluster kubeconfig --id $CLUSTER_ID
export KUBECONFIG="$(cat ~/.kube/config)"
KUBECONFIG="${KUBECONFIG//'%'/'%25'}"
KUBECONFIG="${KUBECONFIG//$'\n'/'%0A'}"
KUBECONFIG="${KUBECONFIG//$'\r'/'%0D'}"
echo "kubeconfig=$KUBECONFIG" >> $GITHUB_OUTPUT