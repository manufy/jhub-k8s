#/bin/bash

helm upgrade --cleanup-on-fail \
  --install jbub-k8s bitnami/jupyterhub \
  --namespace jhub \
  --create-namespace \
  --version=1.1.3 \
  --values config.yaml
  
  