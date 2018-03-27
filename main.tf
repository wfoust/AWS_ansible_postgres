provider "aws" {
  region = "${var.region}"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = "${var.AZs}"
  private_subnets = "${var.private_subnets}"
  public_subnets  = "${var.public_subnets}"

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_instance" "postgres_server" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.private_subnets[0]}"

  #subnet_id = "${module.vpc.aws_subnet.private[0].id}"
  user_data = "${file("files/bootstrap_ansible.sh")}"
}
