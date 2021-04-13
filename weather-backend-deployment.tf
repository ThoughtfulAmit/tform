resource "kubernetes_deployment" "weather-backend-deployment" {
  metadata {
    name = "weather-backend-deployment"
    labels = {
      App = "weather-backend"
    }
    namespace = kubernetes_namespace.weatherns.metadata[0].name
  }

  spec {
    replicas                  = 2
    progress_deadline_seconds = 240
    selector {
      match_labels = {
        App = "weather-backend"
      }
    }
    template {
      metadata {
        labels = {
          App = "weather-backend"
        }
      }
      spec {
        container {
          image = "${var.container_registry}/${var.project_id}/${var.backend_image_name}:${env.BUILD_ID}"
          name  = "weather-backend"

          env {
            name  = "GOOGLE_CLOUD_PROJECT"
            value = var.project_id
          }
          port {
            container_port = 5000
          }

          resources {
            limits = {
              cpu    = "0.2"
              memory = "256Mi"
            }
          }
        }
      }
    }
  }
}