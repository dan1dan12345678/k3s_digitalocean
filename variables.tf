variable "do_token" {
  type = string
  default = "dop_v1_bbf2f5176015d47e0a0e22e8f1bef4534dcbfb99e73bbc606d29e9c0d9840e9f"
  sensitive = true
}

variable "cluster_name" {
  type = string
  default = "terraformk3s"
}

variable "k8s_version" {
  type = string
  default = "1.29.0-do.0"
}

variable "region" {
  type = string
  default = "fra1"
}