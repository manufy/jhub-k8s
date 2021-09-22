#/bin/bash
kubectl create namespace pgo
kubectl config set-context $(kubectl config current-context) --namespace=pgo
kubectl apply -f ./percona-postgresql-operator/deploy/operator.yaml
kubectl apply -f ./percona-postgresql-operator/deploy/cr.yaml
 