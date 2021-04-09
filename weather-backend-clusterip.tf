resource "kubernetes_service" "weather-backend-service" {
  metadata {
    name      = "weather-backend-service"
    namespace = kubernetes_namespace.weatherns.metadata[0].name
  }
  spec {
    selector = {
      App = kubernetes_deployment.weather-backend-deployment.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 5000
      target_port = 5000
    }

    type = "ClusterIP"
  }
}