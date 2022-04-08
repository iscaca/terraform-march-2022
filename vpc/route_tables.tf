# Public Route Table

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_own_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_internet_gateway.id
  }
  tags = merge(
      var.tags,{
          Name = "public_route_table"
      }
  )
}

# Private Route Table

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_own_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.my_nat_gateway.id
  }
  tags = merge(
      var.tags,{
          Name = "private_route_table"
      }
  )
}