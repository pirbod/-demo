provider "kubernetes" {
  # Reads from local ~/.kube/config by default to manage cluster resources
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "demo" {
  # Creates or ensures the namespace named below exists
  metadata {
    name = var.namespace
  }
}
