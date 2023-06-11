#!/bin/sh

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm -n argocd install argocd argo/argo-cd --create-namespace --version 5.35.0 -f custom-values.yaml
# kubectl apply -f app.yaml
