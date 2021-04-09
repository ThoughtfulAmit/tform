resource "kubernetes_deployment" "weather-frontend-deployment" {
  metadata {
    name = "weather-frontend-deployment"
    labels = {
      App = "weather-frontend"
    }
    namespace = kubernetes_namespace.weatherns.metadata[0].name
  }

  spec {
    replicas                  = 2
    progress_deadline_seconds = 240
    selector {
      match_labels = {
        App = "weather-frontend"
      }
    }
    template {
      metadata {
        labels = {
          App = "weather-frontend"
        }
      }
      spec {
        container {
          image = "${var.container_registry}/${var.project_id}/${var.frontend_image_name}"
          name  = "weather-frontend"

          env {
            name  = "SERVER"
            value = "http://weather-backend-service:5000"
          }
          port {
            container_port = 8095
          }

          resources {
            limits = {
              cpu    = "1"
              memory = "4096Mi"
            }
          }
        }
      }
    }
  }
}
