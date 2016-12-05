# DevStack

You should specify all the apps you want to use in devstack in `requirements.yaml`.

### Installing

To install devstack charts, run the following steps:

1. Make sure you have devstack repo added to your helm repos:
```shell
 $ helm repo list
 # NAME            URL
 # stable          https://kubernetes-charts.storage.googleapis.com/
 # local           http://127.0.0.1:8879/charts
 # devstack        https://apps.devstack.com
```

2. Specify all the apps you want to install in `requirements.yaml`. The file can be used as an example itself.

3. Add your passwords in `values.yaml`. Again use this file as an example. To install this chart from the repo exec the following:
```shell
 $ helm install devstack/devstack -f values.yaml
```

4. Update helm dependencies:
```shell
 $ helm dep update
```

5. Install this chart;
```shell
 $ helm package .
 $ helm install devstack-0.0.1.tgz
```
