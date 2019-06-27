#!/usr/bin/env bash

oc delete all -l component=prometheus-aggregate-exporter
oc delete svc prometheus-exporter-alpha-0
oc delete svc prometheus-exporter-zero-0
oc apply -f prom-exporter.yaml
