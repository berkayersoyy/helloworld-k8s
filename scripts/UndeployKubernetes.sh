echo "Running undeploy"

echo "Deleting deployments"
kubectl delete deployments helloworld-k8s

echo "Deleting svc"
kubectl delete svc helloworld-k8s-svc

echo "Deleting pods"
kubectl delete pods -l helloworld-k8s

echo "Done!"