resource "aws_instance" "instanceDEV" {
  ami           = "ami-05576a079321f21f8"  # Amazon Linux 2 AMI en la región eu-west-1
  instance_type = "t2.micro"

  tags = {
    Name        = "instanceDEV"
    Environment = "Dev"
  }
}
