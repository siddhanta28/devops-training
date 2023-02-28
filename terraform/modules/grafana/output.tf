output "name"{
    description = "The name of the chart."
    value       = helm_release.grafana.name
}

output "status" {
 description = "Status of the deployed helm chart" 
 value = helm_release.grafana.status
}

output "id" {
 description = "Id of the deployed helm chart" 
 value = helm_release.grafana.id
}