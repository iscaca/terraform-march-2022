variable "ec2_inbound_rules"{
    type = list(string)
    description = "A list of ports for inbound rule"
    default = [ "80", "443"]
}

variable "instance_type" {
    type = string
    description = "Capacity"
    default = "t2.micro"
}

variable "ami" {
    type = string
    description = "Image ID for EC2 Instance"
    default = "ami-0c02fb55956c7d316"
}


variable "stage" {
    type = string
    default = "prod"
}

variable "region"{
    type = string
    default = "us-east-1"
}

variable "env" {
    type = string
    description = "This variable represents an environment"
    default = "dev"
}

variable "project" {
    type = string
    default = "fronted"
}

variable "subnet_id"{
    type = list(string)
    default = ["subnet-0ef2807a98153fa38","subnet-00b327427253aaa38","subnet-0e4c256aceb55824e"]
}




