# Jira Helm Chart

## Installation

Clone this repo, then:
```bash
$ helm package path/to/jira/chart
$ helm install jira-0.1.0.tgz \
  --set db_password=password
```
