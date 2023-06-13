resource "aws_instance" "demo-ec2" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  tags = {
    Name = "demo-ec2"
  }
}


resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "demo-sg"
  vpc_id      = data.aws_vpc.vpc_id

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
    Name = "demo"
  }
}


