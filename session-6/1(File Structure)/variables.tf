variable "ami"{
    type = string
    description = "This is an AMI for my web Instance"
    default = "ami-0c02fb55956c7d316"
}

variable "instance_type"{
    type = string
    description = "This is an instance type for my web instance"
    default = "t2.micro"
}

variable "env" {
  type = string
  description = "This variables represents environment"
  default = "dev"
}

variable "web_sg_ports"{
    type = list(string)
    description = "these are the ports for my security group"
    default = [ "22", "80" ]

}

variable "web_sg_ports_cidr"{
    type = list(string)
    description = "These are the cidr_blocks for my ports"
    default = [ "0.0.0.0/0", "0.0.0.0/0" ]
}