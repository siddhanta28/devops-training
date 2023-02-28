resource "helm_release" "grafana" {
  name        = var.grafana_name
  chart       = var.grafana_chart
  repository  = var.grafana_repo
  namespace   = var.grafana_namespace

  wait             = true

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "replicas"
    value = "2"
  }
  depends_on = [
    kubernetes_namespace.grafana
  ]
}

resource "kubernetes_namespace" "grafana" {
  metadata {
    name = var.grafana_namespace
  }

}
