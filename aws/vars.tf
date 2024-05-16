# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
variable "secret_key" {
  type        = string
  description = "The secret key for AWS access"
  sensitive   = true
}
variable "access_key" {
  type        = string
  description = "The access key for AWS access"
  sensitive   = false
}

variable "tfc_aws_audience" {
  type        = string
  default     = "aws.workload.identity"
  description = "The audience value to use in run identity tokens"
}

variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "tfc_organization_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  default     = "AWS TFC"
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type        = string
  default     = "terraform-aws-control_tower_account_factory"
  description = "The name of the workspace that you'd like to create and connect to AWS"
}
