variable "do_token" {
  type      = string
  default   = "dop_v1_430494d26ae9afe0f028bc3e3738a95b0f71108966e67f82e80555ad82ce33b0"
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
