# devstack-charts
Official devstack chart repository

## How-to:
Adding this repo to helm:
```bash
 # add the repo
 $ helm repo add devstack https://apps.devstack.com

 # check for it
 $ helm repo list
 
 # Download and example value and customize it with a domain name
 $ curl -L 'https://git.io/vMLaM' > values.yml
 
 # Instanciate the entire stack with 
 $ helm install devstack/devstack -f values.yaml
```


### Configure your DNS or hostname with the following records

Point *.yourdomain.co into the Ingress Controller IP.

* gerrit.yourdomain.co
* build.yourdomain.co
* ldap.yourdomain.co

### Installing a single chart

```bash
 # list all charts
 $ helm search

 # list only devstack charts
 $ helm search devstack

 # install a chart
 $ helm install devstack/gerrit

 # update repo index
 $ helm repo update
```

### Adding new chart

```bash
 # create base with helm
 $ helm create stable/my-awesome-chart

 # change it as you wants
 $ ...

 # test changes locally
 $ make index
 $ helm install packages/my-awesome-chart-0.1.0.tgz

 # deploy
 $ make deploy
```
