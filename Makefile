REGISTRY = gcr.io
NAME = $(REGISTRY)/hc-public/devstack-charts/repo
VERSION = 0.0.1
DIRS = $(shell ls stable)

.PHONY: build clean

build: index
	go build server.go
	docker build -t $(NAME):$(VERSION) --rm .
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: build
	gcloud docker push $(NAME)

deploy: release
	kubectl apply -f deploy/kube

clean:
	rm server
	docker rmi -f $(NAME):$(VERSION)

index:
	set -x						;\
	cd packages					;\
	find . -name '*.tgz' -exec rm {} \;		;\
	for dir in `ls ../stable`			;\
	do                                  		 \
		rm -rf ../stable/$$dir/charts		;\
		helm package ../stable/$$dir		;\
	done
	helm repo index packages --url https://apps.devstack.com/
