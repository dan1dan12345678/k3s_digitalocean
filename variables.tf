variable "do_token" {
  type      = string
<<<<<<< HEAD
  default   = ""
=======
  default   = ""
>>>>>>> cae5a98bbefe21a182c661c3d4f6208559697ff1
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
