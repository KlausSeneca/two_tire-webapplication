# Instance type
variable "instance_type" {
  default = {
    "prod"    = "t3.medium"
    "test"    = "t3.micro"
    "staging" = "t2.micro"
    "dev"     = "t2.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}

variable "my_private_ip" {
  type        = string
  default     = "172.31.78.143"
  description = "Private IP of Cloud 9"
}

variable "my_public_ip" {
  type        = string
  default     = "44.210.239.10"
  description = "Public IP of Cloud 9"
}

variable "service_ports" {
  type        = list(string)
  default     = ["80", "22"]
  description = "webserver ports "
}


