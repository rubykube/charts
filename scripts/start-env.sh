#!/bin/bash

function active_kube {
  minikube status | grep -q Running
}

if ! active_kube; then
  minikube start --kubernetes-version v1.4.5
  sleep 2
else
  echo "minikube is already running"
fi

kubectl get nodes

eval $(minikube docker-env)
