resource "aws_vpc" "my_own_vpc" {
  cidr_block = var.cidr_block[0]
  instance_tenancy = var.tenancy
    tags = {
        Name = var.tag
    }
}