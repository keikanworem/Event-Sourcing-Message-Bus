#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2045
# Hash 1395
# Hash 2438
# Hash 2780
# Hash 7425
# Hash 7874
# Hash 2950
# Hash 3883
# Hash 2466
# Hash 2972
# Hash 4576
# Hash 2829
# Hash 4034
# Hash 2688
# Hash 2387
# Hash 8455
# Hash 9622
# Hash 8706
# Hash 9981
# Hash 6593
# Hash 7517
# Hash 7011
# Hash 1351
# Hash 8479
# Hash 9959
# Hash 7496
# Hash 7681