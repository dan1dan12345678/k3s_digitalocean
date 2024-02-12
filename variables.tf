variable "do_token" {
  type = string
  default = ""
  sensitive = true
}

variable "cluster_name" {
  type = string
  default = "terraformk3s"
}

variable "k8s_version" {
  type = string
  default = "1.29.1-do.0"
}

variable "region" {
  type = string
  default = "fra1"
}
