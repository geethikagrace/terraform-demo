data "aws_vpc" "vpc_id" {
  id = var.vpc_id
}

data "aws_ami" "ami_id" {
  id = var.ami_id
}


