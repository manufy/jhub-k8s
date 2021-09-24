NAME: jhub-bitnami
LAST DEPLOYED: Wed Sep 22 12:49:27 2021
NAMESPACE: pgo
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
*************************************************************************
*** PLEASE BE PATIENT: JupyterHub may take a few minutes to install   ***
*************************************************************************

1. Get the JupyterHub URL by running:

** Please ensure an external IP is associated to the jhub-bitnami-jupyterhub-proxy-public service before proceeding **
** Watch the status using: kubectl get svc --namespace pgo -w jhub-bitnami-jupyterhub-proxy-public **

  export SERVICE_IP=$(kubectl get svc --namespace pgo jhub-bitnami-jupyterhub-proxy-public --template "{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}")
  echo "JupyterHub URL: http://$SERVICE_IP/"

2. Login with the following admin user below to create a Notebook:

  echo Admin user: user
  echo Password: $(kubectl get secret --namespace pgo jhub-bitnami-jupyterhub-hub -o jsonpath="{.data['values\.yaml']}" | base64 --decode | awk -F: '/password/ {gsub(/[ \t]+/, "", $2);print $2}')
