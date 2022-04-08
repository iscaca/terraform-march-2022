# Internet Gateway

resource "aws_internet_gateway" "my_internet_gateway" {
  vpc_id = aws_vpc.my_own_vpc.id

  tags = merge(
      var.tags,{
          Name = "my_internet_gateway"
      }
  )
}

# Nat Gateway

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.nat_gw_eip.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = merge(
      var.tags,{
          Name = "my_nat_gateway"
      }
  )
}

# Elactic IP

resource "aws_eip" "nat_gw_eip" {
  vpc      = true
  tags = merge(
      var.tags,{
          Name = "elastic_ip" 
      }
  )
}