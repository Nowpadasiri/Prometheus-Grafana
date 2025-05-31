#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm install grafana grafana/grafana \
  --namespace monitoring --create-namespace \
  --set adminPassword='admin' \
  --set service.type=LoadBalancer

echo "Grafana installed with LoadBalancer access."
