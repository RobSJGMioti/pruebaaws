provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "my_security_group" {
  name        = "my_security_group"
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Cambia esta AMI por una válida en tu región
  instance_type = "t3.micro"
  key_name      = "your-key-pair-name"
  security_groups = [aws_security_group.my_security_group.name]

  tags = {
    Name = "MyEC2Instance"
  }
}

output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}
