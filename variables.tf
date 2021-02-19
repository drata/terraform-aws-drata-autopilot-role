variable "drata_aws_account_arn" {
  type        = string
  default     = "arn:aws:iam::269135526815:root"
  description = "Drata's AWS account ARN"
}

variable "role_sts_externalid" {
  description = "STS ExternalId condition value to use with the role"
  type        = string
  default     = null
}

variable "role_name" {
  description = "IAM role name"
  type        = string
  default     = "DrataAutopilotRole"
}

variable "role_path" {
  description = "Path of IAM role (we currently do not support a path other than '/')"
  type        = string
  default     = "/"
}

variable "role_description" {
  description = "IAM Role description"
  type        = string
  default     = "Cross-account read-only access for Drata Autopilot"
}

variable "tags" {
  description = "A map of tags to add to IAM role resources"
  type        = map(string)
  default     = {}
}
