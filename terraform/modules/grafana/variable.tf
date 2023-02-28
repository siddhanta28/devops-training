variable "grafana_name" {
    description = "release name"
    type = string
    default = ""
}

variable "grafana_repo" {
    description = "Repository URL where to locate the requested chart" 
    type = string
    default = ""
 }

 variable "grafana_chart" {
     description = "Chart name to be installed" 
     type = string
     default = ""
 }

variable "grafana_namespace" {
    description = "The namespace to install the release into" 
    type = string
    default = ""
 }