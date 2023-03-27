provider "aws" {
        region = "ap-south-1"
}

module "vpc" {
  source = "./vpc"
}
module "ec2_instance" {
  source = "./ec2"
}
module "rds-db" {
  source = "./rds"
}
