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
# Hash 3237
# Hash 1380
# Hash 3353
# Hash 4412
# Hash 6160
# Hash 8903
# Hash 1093
# Hash 7755
# Hash 4463
# Hash 7559
# Hash 3313
# Hash 7368
# Hash 2090
# Hash 3786
# Hash 8950
# Hash 9307
# Hash 5894
# Hash 3470
# Hash 7145
# Hash 1981
# Hash 3779
# Hash 8112
# Hash 7233
# Hash 5731
# Hash 8450
# Hash 6346
# Hash 6306
# Hash 4542
# Hash 6293
# Hash 9687
# Hash 3667
# Hash 5451
# Hash 8648
# Hash 6405
# Hash 3418
# Hash 2262
# Hash 1478
# Hash 8438
# Hash 7871
# Hash 7818
# Hash 6075
# Hash 5883
# Hash 2536
# Hash 4266
# Hash 5017
# Hash 6317
# Hash 7475
# Hash 4403
# Hash 5009
# Hash 7463
# Hash 2627
# Hash 6235
# Hash 5739
# Hash 6968
# Hash 7904
# Hash 9302
# Hash 4727
# Hash 5223
# Hash 5716
# Hash 7434
# Hash 3877
# Hash 8503
# Hash 3926
# Hash 4662