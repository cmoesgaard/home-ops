# Kubernetes
Built from the Flux [suggested monorepo structure](https://fluxcd.io/docs/guides/repository-structure/) and [example repo](https://github.com/fluxcd/flux2-kustomize-helm-example).

## Structure

- **apps** contains Helm releases for the various services and apps.
- **infrastructure** contains common cluster infrastructure, such as Helm repo definitions and Ingress.
- **clusters** contains Flux configuration for each cluster.

```
├── apps
│   └── niflheim
├── infrastructure
│   ├── sources
│   └── traefik
└── clusters
    └── niflheim
```

## Hardware
The cluster is currently [k3s](https://k3s.io/) running on a single Hetzner CX31 VPS.
