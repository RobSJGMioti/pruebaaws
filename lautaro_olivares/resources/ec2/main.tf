provider "aws" {
  region = "us-east-1"  # Región deseada
}

resource "aws_instance" "microservices-instance-dev" {
  ami           = "ami-05576a079321f21f8"
  instance_type = "t2.micro"

  tags = {
    Microservice = "ms1-testing"
    Subject = "microservices"
    Team  = "DevOps"
    Student = "lautaro_olivares_sierra"
  }
}