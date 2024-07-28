# HCP Terraform Workspace `networking`

> This repository manages networking configuration for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [HCP Terraform Workspace `networking`](#hcp-terraform-workspace-networking)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
    * [Development](#development)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Contributors](#contributors)
  * [License](#license)
<!-- TOC -->

## Requirements

- HashiCorp Terraform `1.9.x` or [newer](https://developer.hashicorp.com/terraform/downloads)

### Development

For development and testing of this repository:

- `terraform-docs` `0.18.0` or [newer](https://terraform-docs.io/user-guide/installation/)

## Usage

This repository uses a standard Terraform workflow (`init`, `plan`, `apply`).

For more information, including detailed usage guidelines, see the [Terraform documentation](https://developer.hashicorp.com/terraform/cli/commands).

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| management_region_aws | AWS-specific `Management` Region Identifier. | `string` | yes |
| project_identifier | Human-readable Project Identifier. | `string` | yes |
| tfe_organization | Name of HCP Terraform Organization. | `string` | yes |
| hvn_cidr_block_aws | CIDR range of the HVN. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_vpc | Exported Attributes for `aws_vpc.current` data source. |
| hvn_urls | HCP HVN URLs. |
| tfe_workspace_terraform_version | Terraform version identifier of current HCP Terraform Workspace. |
<!-- END_TF_DOCS -->

## Contributors

For a list of current (and past) contributors to this repository, see [GitHub](https://github.com/workloads/networking/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may download a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

See the License for the specific language governing permissions and limitations under the License.
