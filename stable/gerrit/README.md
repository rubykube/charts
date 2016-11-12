# Gerrit Helm Chart

## Installation

Clone this repo, then:
```bash
$ helm package path/to/gerrit/chart
$ helm install gerrit-0.0.1.tgz \
  --set \
  admin_password=lolthisisadminpasswd,db_password=andthisisdbpasswd,mariadb.mariadbRootPassword=hellyeah
```

## TODO

* add ldap
* add sendemail
* add plugins to install on start

For future configuration: [openfrontier/gerrit](https://hub.docker.com/r/openfrontier/gerrit)
