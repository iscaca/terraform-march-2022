# Key pair Creation

resource "aws_key_pair" "terraform_server_key"{
    key_name = "terraform_server_key"
    public_key = file("~/.ssh/id_rsa.pub")
}

# Ec2 on Public Subnet

resource "aws_instance" "main_ec2"{
    ami =data.aws_ami.amazon_linux_2.image_id
    instance_type = var.instance_type
    tags ={
        Name = "${var.env}_first_ec2"
        Environment = var.env
        Project = var.project
    }
    subnet_id = aws_subnet.public_subnet_1a.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.my_sg1.id]
    key_name = aws_key_pair.terraform_server_key.key_name 
}