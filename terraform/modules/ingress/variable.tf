variable "ingress_name" {
    description = "release name"
    type = string
    default = ""
}

variable "ingress_repo" {
    description = "Repository URL where to locate the requested chart" 
    type = string
    default = ""
 }

 variable "ingress_chart" {
     description = "Chart name to be installed" 
     type = string
     default = ""
 }

variable "ingress_namespace" {
    description = "The namespace to install the release into" 
    type = string
    default = ""
 }