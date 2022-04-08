# Public Subnets

resource "aws_subnet" "public_subnet" {
  count = length(var.subnet_azs)

  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = element(var.cidr_block_pub, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = merge(
    var.tags,{
      Name = "public_subnet_${count.index}"
    }
  )
}


# Private Subnets

resource "aws_subnet" "private_subnet" {
  count = length(var.subnet_azs)

  vpc_id     = aws_vpc.my_own_vpc.id
  cidr_block = element(var.cidr_block_pri, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = merge(
    var.tags,{
      Name = "private_subnet_${count.index}"
    }
  )
}


# Public Route Table Associations

 resource "aws_route_table_association" "public" {
   count = length(var.subnet_azs)

    subnet_id = element(aws_subnet.public_subnet.*.id, count.index)
    route_table_id = element(aws_route_table.public_route_table.*.id, count.index)
 }


 # Private Route Table Associations

 resource "aws_route_table_association" "private" {
   count = length(var.subnet_azs)

    subnet_id = element(aws_subnet.private_subnet.*.id, count.index)
    route_table_id = element(aws_route_table.private_route_table.*.id, count.index)
 }
