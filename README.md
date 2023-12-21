# Terraform Cloud Workspace `networking`

> This repository manages networking configuration for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud Workspace `networking`](#terraform-cloud-workspace-networking)
  * [Table of Contents](#table-of-contents)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
<!-- TOC -->

## Requirements

- HashiCorp Terraform `1.6.x` or [newer](https://developer.hashicorp.com/terraform/downloads)

### Development

For development and testing of this repository:

- `terraform-docs` `0.17.0` or [newer](https://terraform-docs.io/user-guide/installation/)

## Usage

This repository uses a standard Terraform workflow (`init`, `plan`, `apply`).

For more information, including detailed usage guidelines, see the [Terraform documentation](https://developer.hashicorp.com/terraform/cli/commands).

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| management_region_aws | AWS-specific `Management` Region Identifier. | `string` | yes |
| project_identifier | Human-readable Project Identifier. | `string` | yes |
| tfe_organization | Name of Terraform Cloud Organization. | `string` | yes |
| hvn_cidr_block_aws | CIDR range of the HVN. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_vpc | Exported Attributes for `aws_vpc.current` data source. |
| hvn_urls | HCP HVN URLs. |
<!-- END_TF_DOCS -->

