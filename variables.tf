variable "region" {
  description = "The AWS region."
  default     = "us-east-1"
}

variable "ami" {
  description = "The AWS AMI to use for the EC2 instance."
  default     = "ami-f652979b"
}

variable "instance_type" {
  description = "The AWS instance type."
  default     = "t2.micro"
}

variable "AZs" {
  description = "List of the Availability Zones to use."
  type        = "list"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  description = "List of the private subnets inside of VPC."
  type        = "list"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "List of the public subnets inside of VPC."
  type        = "list"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}
