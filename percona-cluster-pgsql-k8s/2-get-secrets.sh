#/bin/bash
kubectl get secrets
kubectl get secret cluster1-pguser-secret -o yaml > secrets.yaml
