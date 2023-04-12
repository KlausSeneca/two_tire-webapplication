# Default tags
variable "default_tags" {
  default = {}
  type        = map(any)
  description = "AWS resource default tags "
}
# Name prefix
variable "prefix" {
  type        = string
  description = "Name prefix"
}
# Provision public subnets in custom VPC
variable "public_cidr_blocks" {
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Provision public subnets in custom VPC
variable "private_cidr_block" {
  type        = list(string)
  description = "Private Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  type        = string
  description = "Static web site vpc"
}

# Variable to signal current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}

variable "private_route_table" {
  default ="route_table1"
  type = string
  description ="private route table"
}

variable "public_route_table" {
  default ="route_table2"
  type = string
  description ="public route table"
}
