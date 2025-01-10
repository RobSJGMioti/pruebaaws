resource "aws_db_instance" "my_rds_instance" {
  identifier        = "alejandrogag-rds-dev"
  engine            = "mysql"
  engine_version    = "5.7" 
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "alejandro"
  password          = "password1234"

  tags = {
    Name        = "alejandrogag-rds"
    Environment = "Dev"
  }
}
