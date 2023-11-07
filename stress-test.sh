#!/bin/bash


for i in $(seq 1 5);
do
    echo "Creating kind v1.27.0 cluster $i"
    replicated cluster create --distribution kind --version v1.27.0 --name josh-kind-1.27-$i --ttl 10m
done

sleep 300

for i in $(seq 1 5);
do
    echo "Creating kind v1.26.3 cluster $i"
    replicated cluster create --distribution kind --version v1.26.3 --name josh-kind-1.26-$i --ttl 10m
done

sleep 600

for i in $(seq 1 5);
do
    echo "Creating kind v1.25.8 cluster $i"
    replicated cluster create --distribution kind --version v1.25.8 --name josh-kind-1.25-$i --ttl 10m
done

sleep 600

for i in $(seq 1 5);
do
    echo "Creating k3s v1.24 cluster $i"
    replicated cluster create --distribution k3s --version v1.24 --name josh-k3s-1.24-$i --ttl 10m
done

sleep 600

for i in $(seq 1 5);
do
    echo "Creating k3s v1.25 cluster $i"
    replicated cluster create --distribution k3s --version v1.25 --name josh-k3s-1.25-$i --ttl 10m
done

sleep 600

for i in $(seq 1 5);
do
    echo "Creating k3s v1.26 cluster $i"
    replicated cluster create --distribution k3s --version v1.26 --name josh-k3s-1.26-$i --ttl 10m
done


