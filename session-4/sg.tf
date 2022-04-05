resource "aws_security_group" "my_sg" {
  name        = "SecurityGroup"
  description = "This is a test Security group"
  vpc_id      = "vpc-0f3d383f1ed7b8f53"

}

resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]               # [] = List
  security_group_id = aws_security_group.my_sg.id # first_label.second_label.attribute

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