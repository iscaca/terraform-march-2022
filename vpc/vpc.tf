# Vpc

resource "aws_vpc" "my_own_vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = "default"
    tags = {
        Name = "my_own_vpc"
        Environment = "dev"
    }
}

# Internet Gateway

resource "aws_internet_gateway" "my_internet_gateway" {
  vpc_id = aws_vpc.my_own_vpc.id

  tags = {
    Name = "my_internet_gateway"
    Environment = "dev"
  }
}

# Public Route Table

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_own_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_internet_gateway.id
  }
  tags = {
    Name = "Public_Route_Table"
    Environment = "dev"
  }
}

# Private Route Table

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_own_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.my_nat_gateway.id
  }
  tags = {
    Name = "Private_Route_Table"
    Environment = "dev"
  }
}

# Nat Gateway

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.nat_gw_eip.id
  subnet_id     = aws_subnet.Public_Subnet_1a.id

  tags = {
    Name = "my_nat_gateway"
    Environment = "dev"
    depends_on =[aws_internet_gateway.my_internet_gateway]
  }
}

# Elactic IP

resource "aws_eip" "nat_gw_eip" {
  vpc      = true
  tags = {
    Name = "nat_gw_eip"
    Environment= "dev"
  }
}

# Public Route Table Associations

 resource "aws_route_table_association" "public_subnet_1a" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.public_route_table.id
 }

 resource "aws_route_table_association" "public_subnet_1b" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.public_route_table.id
 }

 resource "aws_route_table_association" "public_subnet_1a" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.public_route_table.id
 }

 # Private Route Table Associations

 resource "aws_route_table_association" "private_subnet_1a" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.public_route_table.id
 }

 resource "aws_route_table_association" "private_subnet_1a" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.public_route_table.id
 }

 resource "aws_route_table_association" "private_subnet_1a" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.public_route_table.id
 }







