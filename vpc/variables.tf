# VARIABLE FOR REGION
variable "region"{
    type = string
    default = "us-east-1"
}
# VARIABLE FOR VPC NAME
variable "tag_name"{
    type = string
    default = "my_own_vpc"
}
# VARIABLE FOR ENVIRONMENT
variable "env" {
    type = string
    description = "This variable represents an environment"
    default = "dev"
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
# VARIABLE FOR PROJECT NAME
variable "project"{
    type = string
    default = "VPC"
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

