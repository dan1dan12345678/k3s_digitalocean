#!/bin/bash

PASSWORD=$(kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d)
IP=$(kubectl get svc -n argocd argocd-server -o jsonpath="{.status.loadBalancer.ingress[0].ip}")

echo "{\"password\": \"$PASSWORD\", \"ip\": \"$IP\"}"
