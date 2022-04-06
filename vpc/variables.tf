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

