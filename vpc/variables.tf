# VARIABLE FOR REGION
variable "region"{
    type = string
    default = "us-east-1"
}

# VARIABLE FOR AMI
variable "ami" {
    type = string
    description = "Image ID for EC2 Instance"
    default = "ami-0c02fb55956c7d316"
}

# VARIABLE FOR INSTANCE TYPE
variable "instance_type" {
    type = string
    description = "Capacity"
    default = "t2.micro"
}

# VARIABLES FOR VPC CIDR BLOCK
variable "vpc_cidr_block" {
    type = string
    description = "This is the Cidr Block for my vpc"
    default = "10.0.0.0/16"
}

# VARIABLES FOR SUBNETS
variable "subnet_azs" {
  type        = list(string)
  default = [ "us-east-1a", "us-east-1b","us-east-1c"]
}

variable "cidr_block_pub"{
    type = list(string)
    description = "These are IP addresses for Public subnets" 
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "cidr_block_pri"{
    type = list(string)
    description = "These are IP addresses for Private subnets" 
    default = [  "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ]
}


# VARIABLES FOR SECURITY GROUPS
variable "ec2_inbound_rules"{
    type = list(string)
    description = "A list of ports for inbound rule"
    default = ["22", "80", "443"]
}

variable "ec2_inbound_rules_cidr"{
    type = list(string)
    description = "A list of CIDR ranges for inbound rules"
    default = ["0.0.0.0/0", "10.0.0.0/16", "10.0.0.0/24"]
}

# VARIABLES FOR TAGS
variable "tags" {
    type = map
    default =   {
            "ENV": "dev",
            "Project": "VPC"
                }
}