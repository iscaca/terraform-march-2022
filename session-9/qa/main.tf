# Terraform Local module which consists of Child and Root modules

module "ec2" {
    source = "../../modules/ec2"                 #Local or Remote, when it is local module, you provide a path of the Child module
    # You can declare your variables as a configuration
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    env = "qa"
    project = "app-1"
    s3_bucket_name = module.s3.s3_bucket_name

}

module "s3" {
    source = "../../modules/s3"
    env = "qa"
  
}