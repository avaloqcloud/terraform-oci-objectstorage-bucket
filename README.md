[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/avaloqcloud/terraform-oci-objectstorage-bucket/archive/refs/tags/v0.0.1.zip)

## Terraform Object Storage
Terraform module to manage Oracle Cloud Infrastructure (OCI) Object Storage

## Table of contents

* [Usage](#usage)
* [Requirements](#requirements)
* [Providers](#providers)
* [Modules](#modules)
* [Resources](#resources)
* [Inputs](#inputs)
* [Outputs](#outputs)

## Usage

```hcl
module "terraform-oci-objectstorage-bucket" {
  source = "https://github.com/avaloqcloud/terraform-oci-objectstorage-bucket?ref=v0.1.0"
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_objectstorage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/objectstorage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_bucket_namespace"></a> [bucket\_namespace](#input\_bucket\_namespace) | Name of the namespace | `string` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment OCID | `string` | n/a | yes |

## Outputs

No outputs.
