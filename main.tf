terraform {
  required_providers {
    digitalocean = {
        source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "terraformk8s" {
  name = var.cluster_name
  region = var.region
  version = var.k8s_version

  node_pool {
    name = "worker-node-pool"
    size = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes = 2
    max_nodes = 3
  }
}