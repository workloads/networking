variable "hvn_cidr_block_aws" {
  type        = string
  description = "The CIDR range of the HVN."
  default     = "172.25.16.0/20"
}

# tflint-ignore: terraform_unused_declarations
variable "hvn_id_aws" {
  type        = string
  description = "AWS-specific HashiCorp HVN Identifier."
  default     = null
}

variable "management_region_aws" {
  type        = string
  description = "AWS-specific `Management` Region Identifier."
}

# tflint-ignore: terraform_unused_declarations
variable "project_identifier" {
  type        = string
  description = "Human-readable Project Identifier."
}

variable "tfe_organization" {
  type        = string
  description = "Name of the Terraform Cloud Organization."
}
