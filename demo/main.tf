resource "aws_instance" "demo-ec2" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-ec2"
  }
}