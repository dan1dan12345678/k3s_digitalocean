# This is Terraform k3s 3 node cluster deploy with ArgoCD on top off used for terraform cloud formation learning path

# k3s-digitalocean deployment of 3 k3s nodes

# DO token need to added to main .tf

<<<<<<< HEAD


How to`s
 
  . export KUBECONFIG=./kubeconfig-terraformk3s

  . check if nodes are created

    kubectl get no


Deploy ArgoCD as POC

 . get ArgoCD first run password

   kubectl get secrets argocd-initial-admin-secret -n default -o jsonpath="{.data.password}" | base64 --decode

 . get IP address of loadbalancer

   kubectl get svc -n default

  . log in as Admin to ArgoCD
   



=======
# Deploy ArgoCD as POC

export KUBECONFIG=./kubeconfig-terraformk3s

kubectl get no
>>>>>>> cae5a98bbefe21a182c661c3d4f6208559697ff1
