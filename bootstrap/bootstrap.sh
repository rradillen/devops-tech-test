#!/usr/bin/env bash

#helm upgrade argocd --namespace argocd argo/argo-cd --set server.ingress.enabled=true --set 'server.ingress.hosts[0]=argocd.cloud.dodeka.be' --set 'server.extraArgs[0]=--insecure' --install --create-namespace
nohup bash -c 'minikube start' > minikube.log 2>&1
helm repo add argo https://argoproj.github.io/argo-helm
helm upgrade argocd --namespace argocd argo/argo-cd --set server.ingress.enabled=true --set 'server.extraArgs[0]=--insecure' --install --create-namespace