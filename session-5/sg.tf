resource "aws_security_group" "my_sg" {
  name        = "SecurityGroup"
  description = "This is a test Security group"
  vpc_id      = "vpc-0f3d383f1ed7b8f53"

}

resource "aws_security_group_rule" "ingress_ssh" {
  count = length(var.ec2_inbound_rules)                                               // length will count how many string, number that I have in list
  type              = "ingress"
  from_port         = element(var.ec2_inbound_rules, count.index)                     // count.index = 0, 1, 2
  to_port           = element(var.ec2_inbound_rules, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ec2_inbound_rules_cidr, count.index)]              # [] = List
  security_group_id = aws_security_group.my_sg.id                                     # first_label.second_label.attribute

}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg.id

}

#Reference is a dynamic action

# terraform.tfstate is called backend file.
# terraform.tfstate or backend file keeps track of your infrastructure.
# terraform.tfstate is in charge of keeping Terraform idempotent.


# element, count.index, count, length = v.0.14 and v.0.15
# Terraform introduced for_each
# Terraform introduced dynamic resource creation

# Interpolation
# Iteration

# For loop and while loop 
# What is loop