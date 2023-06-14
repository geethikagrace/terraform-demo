resource "aws_instance" "demo-ec2" {
#  ami           = "ami-03265a0778a880afb"
  ami           = data.aws_ami.ami_id.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  tags = {
    Name = "demo-ec2"
  }
}


resource "aws_security_group" "demo-sg" {
  name        = var.sg_name
  description = var.sg_name
  vpc_id      = data.aws_vpc.vpc_id.id

  ingress {
    description      = "demo"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}

resource "null_resource"  "sony" {

  provisioner "local-exec" {
    command = "echo hello  world"
  }
}


