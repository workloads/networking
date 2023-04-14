# Terraform Cloud Workspace `networking`

> This directory manages the lifecycle of the networking configuration for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud Workspace `networking`](#terraform-cloud-workspace-networking)
  * [Table of Contents](#table-of-contents)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
<!-- TOC -->

## Usage

This repository uses a standard Terraform workflow (`init`, `plan`, `apply`).

For more information, including detailed usage guidelines, see the [Terraform documentation](https://developer.hashicorp.com/terraform/cli/commands).

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| management_region_aws | AWS-specific `Management` Region Identifier. | `string` | yes |
| project_identifier | Human-readable Project Identifier. | `string` | yes |
| tfe_organization | Name of the Terraform Cloud Organization. | `string` | yes |
| hvn_cidr_block_aws | CIDR range of the HVN. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_vpc_id | Exported Attributes for `aws_vpc.current` data source. |
| hvn_urls | HCP HVN URLs. |
<!-- END_TF_DOCS -->

