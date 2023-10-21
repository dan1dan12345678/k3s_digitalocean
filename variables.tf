variable "do_token" {
  type = string
  default = ""
  sensitive = true
}

variable "cluster_name" {
  type = string
  default = "terraformk8s"
}

variable "k8s_version" {
  type = string
  default = "1.28.2-do.0"
}

variable "region" {
  type = string
  default = "syd1"
}