echo "Running deploy"
echo "Building docker image"
Docker build -t berkayersoyy/helloworld-k8s .

echo "Creating deployment yaml"
kubectl create -f deployment.yaml

echo "Exposing k8s"
kubectl expose deployment helloworld-k8s --type=NodePort --name=helloworld-k8s-svc --target-port=8000

echo "Check the port helloworld-k8s-svc"
kubectl get svc