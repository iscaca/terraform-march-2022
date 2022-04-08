# Key pair Creation

resource "aws_key_pair" "terraform_server_key"{
    key_name = "terraform_server_key"
    public_key = file("~/.ssh/id_rsa.pub")
}

# Ec2 on Public Subnet

resource "aws_instance" "main_ec2"{
    ami =data.aws_ami.amazon_linux_2.image_id
    instance_type = var.instance_type
    tags = merge(
        var.tags,{
            Name = "first_ec2"
        }
    )
    subnet_id = aws_subnet.public_subnet[0].id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.my_sg1.id]
    key_name = aws_key_pair.terraform_server_key.key_name 
}