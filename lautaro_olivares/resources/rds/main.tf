provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds-instance-dev" {
  identifier        = "use1-microservice1-rds-dev"
  engine            = "mysql"
  engine_version    = "5.7" 
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "username"
  password          = "secret-password"

  tags = {
    Microservice = "ms1-testing"
    Subject = "microservices"
    Team  = "DevOps"
    Student = "lautaro_olivares_sierra"
  }
}