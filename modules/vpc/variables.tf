variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "enable_dns_hostnames" {
  description = "Whether DNS hostnames are enabled"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Whether DNS support is enabled"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to all resources in the VPC"
  type        = map(string)
  default     = {}
}