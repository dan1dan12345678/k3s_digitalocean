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

resource "digitalocean_kubernetes_cluster" "terraformk3s" {
  name = var.cluster_name
  region = var.region
  version = var.k8s_version

  node_pool {
    name = "worker-node-pool"
    size = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes = 3
    max_nodes = 4
  }
}

# Argocd deploy wia Helm chart
# fetch kubeconfig

output "kubeconfig" {
  value = digitalocean_kubernetes_cluster.terraformk3s.kube_config[0].raw_config
  sensitive = true
}

#added

resource "local_file" "kubeconfig" {
  filename = "${path.module}/kubeconfig-${digitalocean_kubernetes_cluster.terraformk3s.name}"
  content  = digitalocean_kubernetes_cluster.terraformk3s.kube_config[0].raw_config
}


# Set up the Kubernetes provider using the kubeconfig from the DigitalOcean cluster.

provider "kubernetes" {
 config_path = local_file.kubeconfig.filename
}

provider "helm" {
  kubernetes {
    config_path = local_file.kubeconfig.filename
  }
}


# Helm provider to deploy ArgoCD using a Helm chart.
#provider "helm" {
#  kubernetes {
#    config_path = digitalocean_kubernetes_cluster.terraformk3s.kube_config[0].raw_config
#  }
#}



# Deploying ArgoCD

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "6.0.6"  # Specify the chart version

  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }

  # You can add more `set` blocks to customize the ArgoCD deployment
}
