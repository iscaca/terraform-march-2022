resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.amazon_linux_2.image_id                           
  instance_type = var.instance_type                               #  "" String, Hard Coded Value
  tags = {
    Name = "${var.env}-app-instance"
    Name2 = format("%s-app-instance", var.env)
  }
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}

# Combine static and dynamic values together "${var.env}"
# Name = dev-app-instance
# Name = format("%s-app-instance", var.env)   %s = string       %d = number