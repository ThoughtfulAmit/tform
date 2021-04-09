resource "kubernetes_namespace" "weatherns" {
  metadata {
    name = "weatherappdemo"
  }
}