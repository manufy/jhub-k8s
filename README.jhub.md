Release "jbub-k8s" does not exist. Installing it now.
NAME: jbub-k8s
LAST DEPLOYED: Tue Sep  7 11:38:59 2021
NAMESPACE: jhub
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
Thank you for installing JupyterHub!

Your release is named "jbub-k8s" and installed into the namespace "jhub".

You can check whether the hub and proxy are ready by running:

 kubectl --namespace=jhub get pod

and watching for both those pods to be in status 'Running'.

You can find the public (load-balancer) IP of JupyterHub by running:

  kubectl -n jhub get svc proxy-public -o jsonpath='{.status.loadBalancer.ingress[].ip}'

It might take a few minutes for it to appear!

To get full information about the JupyterHub proxy service run:

  kubectl --namespace=jhub get svc proxy-public

If you have questions, please:

  1. Read the guide at https://z2jh.jupyter.org
  2. Ask for help or chat to us on https://discourse.jupyter.org/
  3. If you find a bug please report it at https://github.com/jupyterhub/zero-to-jupyterhub-k8s/issues
  