# helm-api

![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)  ![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

Deploy do backend de comentários.

# Prerequisites

* Install the kubectl, helm and helm-docs commands following the instructions of the file [REQUIREMENTS.md](../REQUIREMENTS.md).

# Installing the Chart

* Access a Kubernetes cluster.

* Change the values according to the need of the environment in ``helm-api/values.yaml`` file. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

* Test the installation with command:

```bash
helm upgrade --install helm-api -f helm-api/values.yaml helm-api/ -n helm-api --create-namespace --dry-run
```

* To install/upgrade the chart with the release name `helm-api`:

```bash
helm upgrade --install helm-api -f helm-api/values.yaml helm-api/ -n helm-api --create-namespace
```

Create a port-forward with the follow command:

```bash
kubectl port-forward svc/helm-api 3000:80 -n helm-api
```

Open the browser and access the URL: http://localhost:3000

## Uninstalling the Chart

To uninstall/delete the `helm-api` deployment:

```bash
helm uninstall helm-api -n helm-api
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Parameters

The following tables lists the configurable parameters of the chart and their default values.

Change the values according to the need of the environment in ``helm-api/values.yaml`` file.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `5` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"joseantonionmfilho/api"` |  |
| image.tag | string | `"0.0.1-SNAPSHOT"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.httpGet.path | string | `"/"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.httpGet.path | string | `"/"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| replicaCount | int | `1` |  |
| resources.limits.memory | string | `"100Mi"` |  |
| resources.requests.cpu | string | `"10m"` |  |
| resources.requests.memory | string | `"20Mi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8000` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
