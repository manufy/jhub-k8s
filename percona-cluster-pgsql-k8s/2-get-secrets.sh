#/bin/bash
kubectl get secrets
kubectl get secret cluster1-pguser-secret -o yaml > secrets.yaml
# Put here values from secret.yaml to see username and password
echo "ZUtvMmgwRTdaY3p6OGJQQlh1a25zZWZ2" | base64 --decode
echo "cGd1c2Vy" | base64 --decode

