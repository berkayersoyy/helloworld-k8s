.PHONY: run
run:
	$(info Running)
	go run main.go

.PHONY: run-k8s
run-k8s:
	chmod +x ./scripts/RunKubernetes.sh
	./scripts/RunKubernetes.sh
prerequisites: run-k8s
target: prerequisites

.PHONY: stop-k8s
stop-k8s:
	chmod +x ./scripts/StopKubernetes.sh
	./scripts/StopKubernetes.sh
prerequisites: stop-k8s
target: prerequisites