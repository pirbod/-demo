# Outputs the name of the namespace after 'terraform apply' completes.
output "namespace" {
  value = kubernetes_namespace.demo.metadata[0].name
}
