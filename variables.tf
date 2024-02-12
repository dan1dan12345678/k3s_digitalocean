variable "do_token" {
  type = string
  default = "dop_v1_d7e7283eb31538d8df30fba6b6434fd2c940c8ca0ce3ae623bf3e3d984cfc933"
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
