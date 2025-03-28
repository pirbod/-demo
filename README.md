# Verkstedt Infrastructure Demo

# Setup Instructions

1. Start Minikube
 
   minikube start


2. Apply Terraform to Provision Infrastructure

    cd terraform
    terraform init
    terraform apply


3. Deploy Kubernetes Manifests

    # Creates the secrets first
    kubectl apply -f ../secrets/

    # Then deploys Prometheus, Grafana, and network policies
    kubectl apply -f ../k8s/
    
4.  Verify Services

    # Check that all pods are running
    kubectl get pods -n verkstedt-demo

    # Access Grafana from your browser via minikube
    minikube service grafana-service -n verkstedt-demo

5. Cleanup

   # Tear down resources via Terraform
    terraform destroy

    # OR remove the namespace (includes all resources) if you prefer kubectl
    kubectl delete namespace verkstedt-demo
