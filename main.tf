provider "aws" {
  region = "us-east-1"
}
module "ec2_instance" {
  source = "./modules/ec2"
}

module "s3_bucket" {
  source = "./modules/s3"
}

module "rds" {
  source = "./modules/rds"
}