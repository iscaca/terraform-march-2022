//1. Terraform Registry
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"


// Variables

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }

}

// 2. Github Public or Private Repositories
module "s3" {
    source = "github.com/aKumoSolutions/terraform-march-2022/modules/s3?ref=v1.1.0"
    env = "dev"

}

// ?ref=v1.1.1 is a way to reference to the releases and tags