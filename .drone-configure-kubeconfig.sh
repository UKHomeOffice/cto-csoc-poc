#!/bin/sh
set -e
./kubectl config set-cluster notprod --server=${KUBE_SERVER}
./kubectl config set clusters.notprod.certificate-authority-data ${KUBE_CA}
./kubectl config set-credentials notprod --token=${KUBE_TOKEN}
./kubectl config set-context notprod --cluster=notprod --user=notprod --namespace=${KUBE_NAMESPACE}
