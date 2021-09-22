#/bin/bash
helm upgrade --install pgdatabase --namespace pgdatabase bitnami/postgresql \
  --create-namespace \
--set postgresqlPassword=change_this_password \
--set postgresqlDatabase=jhubdb
