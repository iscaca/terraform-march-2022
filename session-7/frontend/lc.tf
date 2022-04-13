# Key pair Creation

resource "aws_key_pair" "terraform_server_key"{
    key_name = "terraform_server_key"
    public_key = file("~/.ssh/id_rsa.pub")
}

# Launch CONFIG
resource "aws_launch_configuration" "as_conf" {
  name          = "web_config"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  user_data = file("user_data.sh")
  security_groups = [var.default_sg]
  key_name = aws_key_pair.terraform_server_key.key_name 
      
  Name = replace( local.name, "rtype", "LC")
      
  
}