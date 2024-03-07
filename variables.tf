variable "do_token" {
  type      = string
  default   = "dop_v1_eb3ade305e200148e797371d7b1c9a29ac845fea834b0b017094afc319180899"
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
