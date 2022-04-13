resource "aws_security_group" "my_sg" {
  name        = "SecurityGroup"
  description = "This is a test Security group"
  vpc_id      = "vpc-0f3d383f1ed7b8f53"

}

resource "aws_security_group_rule" "ingress_ssh" {
  count = length(var.ec2_inbound_rules)                                              
  type              = "ingress"
  from_port         = element(var.ec2_inbound_rules, count.index)                     
  to_port           = element(var.ec2_inbound_rules, count.index)
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]           
  security_group_id = aws_security_group.my_sg.id                                     

}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg.id

}