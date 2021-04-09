
resource "kubernetes_service" "weather-frontend-service" {
  metadata {
    name      = "weather-frontend-service"
    namespace = kubernetes_namespace.weatherns.metadata[0].name
  }
  spec {
    selector = {
      App = kubernetes_deployment.weather-frontend-deployment.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 80
      target_port = 8095
    }

    type = "LoadBalancer"
  }
}

output "lb_ip" {
  value = kubernetes_service.weather-frontend-service.status.0.load_balancer.0.ingress.0.ip
}
output "lb_status" {
  value = kubernetes_service.weather-frontend-service.status
}