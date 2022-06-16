echo "Running k8s"
echo "Building docker image"
docker build -t berkayersoyy/helloworld-k8s .

echo "Creating deployment yaml"
kubectl create -f k8s/deployment.yaml

echo "Exposing k8s"
kubectl expose deployment helloworld-k8s --type=NodePort --name=helloworld-k8s-svc --target-port=8000

echo "Done!"
echo "Check the port helloworld-k8s-svc"
kubectl get svc

echo "Getting token for login to dashboard..."
kubectl -n kubernetes-dashboard create token admin-user
echo "End of token"

echo "Running dashboard with url"
echo "http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/."
kubectl proxy