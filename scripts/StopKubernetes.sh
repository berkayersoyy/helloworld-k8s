echo "Stopping k8s"

echo "Deleting deployments"
kubectl delete deployments helloworld-k8s

echo "Deleting svc"
kubectl delete svc helloworld-k8s-svc

echo "Done!"