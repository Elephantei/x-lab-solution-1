<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [kubernetes_deployment.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) (resource)
- [kubernetes_namespace.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) (resource)
- [kubernetes_service.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_app-name"></a> [app-name](#input\_app-name)

Description: n/a

Type: `string`

### <a name="input_image"></a> [image](#input\_image)

Description: n/a

Type: `string`

### <a name="input_namespace"></a> [namespace](#input\_namespace)

Description: n/a

Type: `string`

### <a name="input_replicas"></a> [replicas](#input\_replicas)

Description: n/a

Type: `string`

### <a name="input_svc-node-port"></a> [svc-node-port](#input\_svc-node-port)

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_container-port"></a> [container-port](#input\_container-port)

Description: n/a

Type: `string`

Default: `"80"`

### <a name="input_cpu-limits"></a> [cpu-limits](#input\_cpu-limits)

Description: n/a

Type: `string`

Default: `"0.5"`

### <a name="input_cpu-requests"></a> [cpu-requests](#input\_cpu-requests)

Description: n/a

Type: `string`

Default: `"250m"`

### <a name="input_memory-limits"></a> [memory-limits](#input\_memory-limits)

Description: n/a

Type: `string`

Default: `"512Mi"`

### <a name="input_memory-requests"></a> [memory-requests](#input\_memory-requests)

Description: n/a

Type: `string`

Default: `"50Mi"`

### <a name="input_svc-port"></a> [svc-port](#input\_svc-port)

Description: n/a

Type: `string`

Default: `"80"`

### <a name="input_svc-type"></a> [svc-type](#input\_svc-type)

Description: n/a

Type: `string`

Default: `"NodePort"`

### <a name="input_target-port"></a> [target-port](#input\_target-port)

Description: n/a

Type: `string`

Default: `"80"`

## Outputs

No outputs.
<!-- END_TF_DOCS -->
