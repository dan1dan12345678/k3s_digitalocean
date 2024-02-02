variable "do_token" {
  type = string
  default = "dop_v1_27aa4b1f214abe69a800ddbfb90b1bde6fbc68a66c7e0d76a348ecb0c497702b"
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