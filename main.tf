resource "aws_instance" "demo-ec2" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = demo-ec2
  }
}