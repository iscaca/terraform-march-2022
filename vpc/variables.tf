variable "tag" {
    type = string
    description = "This variable represents Vpc Name"
    default = "my_own_vpc"
}

variable "tenancy"{
    type = string
    description = "This is for Tenancy situation"
    default = "default"
}

variable "cidr_block"{
    type = list
    description = "This is a range of IP addresses" 
    default = [ "10.0.0.0/16", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ]
}


variable "tagging_route_tables" {
    type = list
    description = "These are the names of Route Tables"
    default = ["Public_Route_Table", "Private_Route_Table"]
}

variable "tagging_subnets_public" {
    type = list
    description = "These are the name of the each subnet under public"
    default = [ "public-subnet-1a", "public-subnet-1b", "public-subnet-1c" ]
  }

  variable "tagging_subnets_private" {
    type = list
    description = "These are the name of the each subnet under public"
    default = [ "private-subnet-1a", "private-subnet-1b", "private-subnet-1c" ]
  }

variable "availability_zones" {
    type = list
    description = "These are the list of availability zones in the Region"
    default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
}


