resource "aws_instance" "test_server" {
  ami           = "ami-093a4ad9a8cc370f4"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 psoto devuser"
  }
}
