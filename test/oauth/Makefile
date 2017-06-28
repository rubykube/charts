TEST_DIR   := $(CURDIR)
CHARTS_DIR := $(CURDIR)/../../stable
CHARTS     ?= mariadb relay gerrit jenkins registry
HELM_ARGS  ?= --debug
NAMESPACE  ?= test-oauth

install:
	@for chart in $(CHARTS);do							 \
	  set -x									;\
	  helm install --replace -f global.yaml -f $${chart}.yaml 			 \
	  --namespace $(NAMESPACE) --name $(NAMESPACE)-$${chart} $(HELM_ARGS)		 \
	  $(CHARTS_DIR)/$${chart}							;\
	done

delete:
	@-for chart in $(CHARTS);do							 \
	  helm delete $(NAMESPACE)-$${chart}			 			;\
	done


