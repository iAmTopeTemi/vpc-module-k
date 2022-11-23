# vpc-module-k

##usage
```hcl

    module "vpc" {
      source = "git::https://github.com/iAmTopeTemi/vpc-module-k.git"
    
      vpc_cidr = "10.0.0.0/16"
      public_cidr = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
      private_cidr = ["10.0.1.0/24", "10.0.3.0/24"]
      database_cidr = ["10.0.51.0/24", "10.0.55.0/24"]
      vpc_tags = {
        Name = "prod_vpc"
      }
    }
