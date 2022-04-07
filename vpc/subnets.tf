# Public Subnets
 # count
resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block_pub[0]
  availability_zone = var.availability_zones[0]
  tags = {
    Name = "Public_Subnet_1a"
    Environment = "dev"
    Project = "VPC"
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block_pub[1]
  availability_zone = var.availability_zones[1]
  tags = {
    Name = "Public_Subnet_1b"
    Environment = "dev"
    Project = "VPC"
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block_pub[2]
  availability_zone = var.availability_zones[2]
  tags = {
    Name = "Public_Subnet_1c"
    Environment = "dev"
    Project = "VPC"
  }
}

# Private Subnets

resource "aws_subnet" "private_subnet_1a" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block_pri[0]
  availability_zone = var.availability_zones[0]
  tags = {
    Name = "Private_Subnet_1a"
    Environment = "dev"
    Project = "VPC"
     }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block_pri[1]
  availability_zone = var.availability_zones[1]
  tags = {
    Name = "Private_Subnet_1b"
    Environment = "dev"
    Project = "VPC"
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = var.cidr_block_pri[2]
  availability_zone = var.availability_zones[2]
  tags = {
    Name = "Private_Subnet_1c"
    Environment = "dev"
    Project = "VPC"
  }
}