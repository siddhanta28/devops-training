resource "helm_release" "ingress" {
  name       = var.ingress_name
  repository = var.ingress_repo
  chart      = var.ingress_chart
  namespace  = var.ingress_namespace
  create_namespace = true

  set {
    name  = "controller.service.type"
    value = "NodePort"
  }
  set {
    name  = "controller.replicaCount"
    value = "2"
  }
  depends_on = [
    kubernetes_namespace.ingress
  ]
}


resource "kubernetes_namespace" "ingress" {
  metadata {
    name = var.ingress_namespace
  }

}
