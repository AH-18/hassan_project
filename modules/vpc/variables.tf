variable "vpc_cidr" {
  description = "The CIDR block to assign to the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name to assign to the VPC."
  type        = string
}

variable "enable_dns_support" {
  description = "Indicates whether DNS support is enabled for the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Indicates whether DNS hostnames are enabled for the VPC."
  type        = bool
  default     = false
}

variable "public_subnets" {
  description = "A list of public subnets with CIDR blocks, availability zones, and mapping options for public IPs."
  type = list(object({
    cidr                    = string
    availability_zone       = string
    map_public_ip_on_launch = bool
  }))
  default = []
}

variable "private_subnets" {
  description = "A list of private subnets with CIDR blocks and availability zones."
  type = list(object({
    cidr              = string
    availability_zone = string
  }))
  default = []
}

variable "vpc_flow_logs_retention_in_days" {
  description = "The number of days to retain VPC flow log events in the specified log group."
  type        = number
  default     = 90
}

variable "vpc_flow_logs_log_format" {
  description = <<-EOT
    The format of the VPC flow log records, specifying the fields to include.
    Default fields include version, VPC ID, subnet ID, instance ID, and more.
  EOT
  type        = string
  default     = "$${version} $${vpc-id} $${subnet-id} $${instance-id} $${interface-id} $${account-id} $${type} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${tcp-flags}"
}

variable "tags" {
  description = "Tags to assign to the VPC and its associated resources."
  type        = map(string)
  default     = {}
}
