variable "do_token" {
  type      = string
  default   = ""
  default   = ""
  sensitive = true
}

variable "cluster_name" {
  type    = string
  default = "terraformk3s"
}

variable "k8s_version" {
  type    = string
  default = "1.28.6-do.0"
}

variable "region" {
  type    = string
  default = "fra1"
}
