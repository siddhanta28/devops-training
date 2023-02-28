output "grafana_name"{
    description = "The name of the chart."
    value       = module.grafana.name
}

output "grafana_status" {
    description = "Status of the deployed helm chart" 
    value = module.grafana.status
}

output "grafana_id" {
    description = "Id of the deployed helm chart" 
    value = module.grafana.id
}

output "ingress_name"{
    description = "The name of the chart."
    value       = module.ingress.name
}

output "ingress_status" {
    description = "Status of the deployed helm chart" 
    value = module.ingress.status
}

output "ingress_id" {
    description = "Id of the deployed helm chart" 
    value = module.ingress.id
}