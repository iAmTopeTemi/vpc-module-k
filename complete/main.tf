#child module
terraform {

  backend "s3" {
    bucket         = "vpc-module-bucket-temi"
    key            = "path/env/vpc-modules"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}

module "vpc" {
  source = "../"

  vpc_cidr = "10.0.0.0/16"
  public_cidr = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
  private_cidr = ["10.0.1.0/24", "10.0.3.0/24"]
  database_cidr = ["10.0.51.0/24", "10.0.55.0/24"]
  vpc_tags = {
    Name = Module_vpc
  }
}