resource "aws_security_group" "my_sg1" {
  name        = "SecurityGroupforTask"
  description = "This is the Security group"
  vpc_id      = aws_vpc.my_own_vpc.id

}

resource "aws_security_group_rule" "ingress_ssh" {
  count = length(var.ec2_inbound_rules)                                               
  type              = "ingress"
  from_port         = element(var.ec2_inbound_rules, count.index)                   
  to_port           = element(var.ec2_inbound_rules, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ec2_inbound_rules_cidr, count.index)]              
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