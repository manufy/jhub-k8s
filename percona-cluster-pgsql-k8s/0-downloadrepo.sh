#/bin/bash
echo "Removing percona cluster local repo"
rm -rf ./percona-postgresql-operator
echo "Downloading percona cluster git remote repo"
git clone -b v0.2.0 https://github.com/percona/percona-postgresql-operator
echo "Removing git info on local dir"
rm -rf ./percona-postgresql-operator/.git
rm -rf ./percona-postgresql-operator/.github
cd percona-postgresql-operator