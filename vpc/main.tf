# Key pair Creation
resource "aws_key_pair" "terraform_server_key"{
    key_name = "terraform_server_key"
    public_key = file("~/.ssh/id_rsa.pub")
}
