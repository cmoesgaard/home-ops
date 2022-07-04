# Kubernetes
Inspired by the [k8s@home cluster template](https://github.com/k8s-at-home/flux-cluster-template).

## Structure
The structure is as follows. The sections are listed in the order in which they are reconciled by Flux.

- **flux** contains the Flux configuration. This is the main entrypoint, and everything else is referenced from here.
- **config** contains cluster configuration.
- **charts** contains Helm repositories.
- **crds** contains `CustomResourceDefinition`s used by various services.
- **infrastructure** contains core cluster infrastructure, such as Ingress and cert-manager.
- **apps** contains the remaining apps and services running in the cluster.

## Hardware
The cluster is currently [k3s](https://k3s.io/) running on a single Hetzner CX31 VPS.
