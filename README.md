# Terraform Cloud Workspace: `networking`

This directory manages the lifecycle of (global) DNS and Networking Components.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| hvn_cidr_block_aws | The CIDR range of the HVN. | `string` | yes |
| management_region_aws | AWS-specific `Management` Region Identifier. | `string` | yes |
| project_identifier | Human-readable Project Identifier. | `string` | yes |
| tfe_organization | The ID of the HVN this HCP Vault cluster is associated to. | `string` | yes |
| hvn_id_aws | AWS-specific HashiCorp HVN Identifier. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_iam_account_alias | current AWS IAM Account Alias. |
| aws_vpc_id | current AWS Default VPC Identifier. |
| hvn_urls | HCP HVN URLs. |
<!-- END_TF_DOCS -->

