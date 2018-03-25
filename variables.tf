variable "region" {
  description = "The AWS region."
  default = "us-east-1"
}

variable "ami" {
  description = "The AWS AMI to use for the EC2 instance."
  default = "ami-f652979b"
}

variable "instance_type" {
  description = "The AWS instance type."
  default = "t2.micro"
}

variable "AZs" {
  description = "List of the Availability Zones to use."
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}