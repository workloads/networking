# Terraform Cloud Workspace: `networking`

> This directory manages the lifecycle of the networking configuration for [@workloads](https://github.com/workloads).

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| management_region_aws | AWS-specific `Management` Region Identifier. | `string` | yes |
| project_identifier | Human-readable Project Identifier. | `string` | yes |
| tfe_organization | The ID of the HVN this HCP Vault cluster is associated to. | `string` | yes |
| hvn_cidr_block_aws | The CIDR range of the HVN. | `string` | no |
| hvn_id_aws | AWS-specific HashiCorp HVN Identifier. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_iam_account_alias | Exported Attributes for `aws_iam_account_alias.current` data source. |
| aws_vpc_id | Exported Attributes for `aws_vpc.current` data source. |
| hvn_urls | HCP HVN URLs. |
<!-- END_TF_DOCS -->

