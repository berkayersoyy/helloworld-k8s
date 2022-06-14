.PHONY: run
run:
	$(info Running)
	go run main.go

.PHONY: deploy-k8s
deploy-k8s:
	chmod +x ./scripts/UndeployKubernetes.sh
	./scripts/DeployKubernetes.sh
prerequisites: deploy-k8s
target: prerequisites

.PHONY: undeploy-k8s
undeploy-k8s:
	chmod +x ./scripts/UndeployKubernetes.sh
	./scripts/UndeployKubernetes.sh
prerequisites: undeploy-k8s
target: prerequisites