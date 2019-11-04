variable "environment" {
  description = "Environment where this will be deployed. prod, uat or dev"
}

variable "vpc_cidr_block_main" {
  description = "CIDR block for the main VPC"
  default     = "20.0.1.0"
}

variable "igw_required" {
  description = "Flag if IGW should be created"
  default     = false
}

variable "vpc_friendly_name" {
  description = "Short, descriptive name of the main vpc."
}