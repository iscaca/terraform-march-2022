resource "aws_vpc" "my_own_vpc" {
  cidr_block = var.cidr_block[0]
  instance_tenancy = var.tenancy
    tags = {
        Name = var.tag
    }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_own_vpc.id
  tags = {
    Name = var.tagging_route_tables[0]
  }
}

resource "aws_subnet" "Public_Subnet_1a" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block[1]
  availability_zone = var.availability_zones[0]
  tags = {
    Name = var.tagging_subnets_public[0]
  }
}

resource "aws_subnet" "Public_Subnet_1b" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block[2]
  availability_zone = var.availability_zones[1]
  tags = {
    Name = var.tagging_subnets_public[1]
  }
}

resource "aws_subnet" "Public_Subnet_1c" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block[3]
  availability_zone = var.availability_zones[2]
  tags = {
    Name = var.tagging_subnets_public[2]
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_own_vpc.id
  tags = {
    Name = var.tagging_route_tables[1]
  }
}

resource "aws_subnet" "Private_Subnet_1a" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block[4]
  availability_zone = var.availability_zones[3]
  tags = {
    Name = var.tagging_subnets_private[0]
  }
}

resource "aws_subnet" "Private_Subnet_1b" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block[5]
  availability_zone = var.availability_zones[4]
  tags = {
    Name = var.tagging_subnets_private[1]
  }
}

resource "aws_subnet" "Private_Subnet_1c" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block[6]
  availability_zone = var.availability_zones[5]
  tags = {
    Name = var.tagging_subnets_private[2]
  }
}





