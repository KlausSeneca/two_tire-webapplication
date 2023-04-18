# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group9",
    "App"   = "Web"
  }
  type        = map(any)
  description = "AWS resource default tags"
}
# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = ["10.1.1.0/24", "10.1.2.0/24","10.1.3.0/24", "10.1.4.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Provision private subnets in custom VPC
variable "private_subnet_cidrs" {
  default     = ["10.1.5.0/24", "10.1.6.0/24"]
  type        = list(string)
  description = "Private Subnet CIDR"
}


# Name prefix
variable "prefix" {
  type        = string
  default     = "Project"
  description = "Name prefix"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.1.0.0/16"
  type        = string
  description = "Static web site vpc"
}

# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}


variable "private_route_table" {
  default     = "route_table1"
  type        = string
  description = "private route table"
}

variable "public_route_table" {
  default     = "route_table2"
  type        = string
  description = "private route table"
}
