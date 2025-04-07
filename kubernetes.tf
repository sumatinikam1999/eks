resource "kubernetes_deployment" "project_eks" {
  metadata {
    name = "terraform-project"
    labels = {
      app = "project_eks"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "project_eks"
      }
    }

    template {
      metadata {
        labels = {
          app = "project_eks"
        }
      }

      spec {
        container {
          name  = "project_eks"
          image = "nginx:1.23.4"
          port {
            container_port = 80
          }
          resources {
            limits = {
              cpu    = "500m"
              memory = "128Mi"
            }
          }
          liveness_probe {
            http_get {
              path = "/"
              port = 80
            }
            initial_delay_seconds = 5
            period_seconds        = 10
          }
          readiness_probe {
            http_get {
              path = "/"
              port = 80
            }
            initial_delay_seconds = 5
            period_seconds        = 10
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "project_eks" {
  metadata {
    name = "terraform-project"
  }
  spec {
    selector = {
      app = "project_eks"
    }
    port {
      port        = 80
      target_port = 80
      node_port   = 30010
    }
    type = "LoadBalancer"
  }
}

