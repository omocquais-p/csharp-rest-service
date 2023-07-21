#!/usr/bin/env bash

echo "PostgreSQL - service class-claim"
tanzu service class-claim create postgres-ms --class postgresql-unmanaged

sleep 20

echo "CHECKS - tanzu service class-claim list"
tanzu service class-claim list

echo "Tekton pipeline"
kubectl apply -f config/tekton-pipeline.yaml

echo "Deploy the app in TAP"
tanzu apps workload apply -f config/workload.yaml --yes
