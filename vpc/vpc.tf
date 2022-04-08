# Vpc

resource "aws_vpc" "my_own_vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = "default"
    tags = merge(
      var.tags,
      {
        Name = my_vpc
      }
    )
}











