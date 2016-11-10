# Gerrit Helm Chart

## Installation

Clone this repo, then:
```bash
$ helm package path/to/gerrit/chart
$ helm install gerrit-0.0.1.tar.gz
```

## TODO

* make it work with persistent volumes
* add ldap
* add db
* add sendemail
* add plugins to install on start

For future configuration: [openfrontier/gerrit](https://hub.docker.com/r/openfrontier/gerrit)
