data "aws_vpc" "vpc_id" {
  id = var.vpc_id
}

data "aws_ami" "ami" {
  id = var.ami_id
}


