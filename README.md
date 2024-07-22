# Terraform Infrastructure as Code (IaC) - digitalocean vpc Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured vpc for digitalocean resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.

```hcl
module "vpc" {
  source = "git::https://github.com/sohanyadav/terraform-digitalocean-vpc.git?ref=v1.0.0"
  name        = "network"
  environment = "test"
  label_order = ["name", "environment"]
  region      = "nyc3"
  ip_range    = "10.10.0.0/24"

}

```
Please ensure you specify the correct 'source' path for the module.

## Module Inputs

- `name`: The name of the application.
- `environment`: The environment (e.g., "test", "production").
- `region`: The DigitalOcean region where resources will be deployed.
- `ip_range`: The IP range for the VPC.
- `managedby`:  ManagedBy, eg 'sohanyadav'.
- `description`: A free-form text field up to a limit of 255 characters to describe the VPC.

## Module Outputs
- This module currently does not provide any outputs.

# Examples
For detailed examples on how to use this module, please refer to the '[example](https://github.com/sohanyadav/terraform-digitalocean-vpc/tree/master/_example)' directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/sohanyadav/terraform-digitalocean-vpc/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.3 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/sohanyadav/terraform-digitalocean-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [digitalocean_vpc.test](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|-----|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"A free-form text field up to a limit of 255 characters to describe the VPC."` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the droplet creation. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_ip_range"></a> [ip\_range](#input\_ip\_range) | The range of IP addresses for the VPC in CIDR notation. | `string` | `""` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'sohanyadav'. | `string` | `"example"`| no |
| <a name="input_name"></a> [name](#input\_name) | A name for the VPC. | `string` | `""`| no |
| <a name="input_region"></a> [region](#input\_region) | The DigitalOcean region slug for the VPC's location. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The date and time of when the VPC was created. |
| <a name="output_default"></a> [default](#output\_default) | A boolean indicating whether or not the VPC is the default one for the region. |
| <a name="output_id"></a> [id](#output\_id) | The unique identifier for the VPC. |
| <a name="output_urn"></a> [urn](#output\_urn) | The uniform resource name (URN) for the VPC. |
<!-- END_TF_DOCS -->