resource "aws_instance" "first_ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  tags = {
    Name        = "TheFirstEC2Instance"
    Environment = "dev"
  }
  security_groups = ["Terraform-sg"]
  key_name        = "my-mac-key"
}



# Terraform has 2 types of blocks. Resource and Data source blocks.
# Resource is desinged to create resources. Data is desinged to fetch the data from existing resources.
# Each block has 2 labels.
# The first label is predefined by Terraform. It indicates what resource you would like to create.
# The second label is defined by Author. It indicates the logical Name or Logical Name or Logical ID for the resources.
# Every single resource has to have a unique logical Name or ID.
# [] = list