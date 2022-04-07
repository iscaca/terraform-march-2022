variable "region"{
    type = string
    default = "us-east-1"
}

variable "tag_name"{
    type = string
    default = "my_own_vpc"
}

variable "vpc_cidr_block" {
    type = string
    description = "This is the Cidr Block for my vpc"
    default = "10.0.0.0/16"
}

variable "cidr_block_pub"{
    type = list
    description = "These are IP addresses for Public subnets" 
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "cidr_block_pri"{
    type = list
    description = "These are IP addresses for Private subnets" 
    default = [  "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ]
}

variable "availability_zones" {
    type = list
    description = "These are availability zones in the Region"
    default = ["us-east-1a", "us-east-1b", "us-east-1c",]
}

variable "aws_route_table_association"{
    type = list(string)
    decription = "This is list of public subnets"
    default = ["public_subnet_1a", "public_subnet_1b", "public_subnet_1c"]
}

variable "aws_route_table_association"{
    type = list(string)
    decription = "This is list of public subnets"
    default = ["private_subnet_1a", "private_subnet_1b", "private_subnet_1c"]
}