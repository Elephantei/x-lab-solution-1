resource "kubernetes_namespace" "default" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_deployment" "default" {
  metadata {
    name      = "${var.namespace}-${var.image}"
    namespace = var.namespace
    labels = {
      App = var.app-name
    }
  }

  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        App = var.app-name
      }
    }
    template {
      metadata {
        labels = {
          App = var.app-name
        }
      }
      spec {
        container {
          image = var.image
          name  = var.namespace

          port {
            container_port = var.container-port
          }

          resources {
            limits = {
              cpu    = var.cpu-limits
              memory = var.memory-limits
            }
            requests = {
              cpu    = var.cpu-requests
              memory = var.memory-requests
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "default" {
  metadata {
    name      = "${var.namespace}-${var.image}"
    namespace = var.namespace
  }
  spec {
    selector = {
      App = var.app-name
    }
    port {
      node_port   = var.svc-node-port
      port        = var.svc-port
      target_port = var.target-port
    }

    type = var.svc-type
  }
}
