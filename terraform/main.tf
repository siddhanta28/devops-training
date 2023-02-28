module "ingress" {
   source  = "./modules/ingress"
 
   ingress_name        = var.ingress_name
   ingress_repo        = var.ingress_repo
   ingress_namespace   = var.ingress_namespace
   ingress_chart       = var.ingress_chart
}

module "grafana" {
  source  = "./modules/grafana"
 
  grafana_name       = var.grafana_name
  grafana_repo       = var.grafana_repo
  grafana_namespace  = var.grafana_namespace
  grafana_chart      = var.grafana_chart

  depends_on = [
    module.ingress
  ]
}


resource "null_resource" "null" {
  triggers = {
    timestmp = local.timestamp_output
  }

  provisioner "local-exec" {
    when = create
    command = "rm -f top-* && top -b -n 2 > top-${self.triggers.timestmp}.txt"  
  }

  depends_on = [
    module.grafana
  ]
}