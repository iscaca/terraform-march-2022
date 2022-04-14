locals {
    region  = "us-east-1"
    stage   = "non-prod"
    project = "provisioner"
    name    = "aws-${local.stage}-${local.region}-${local.project}-rtype-${var.env}"   #naming standard which will be under every resources
    common_tags ={
        env = var.env
        project = local.project
        team   = "Cloud"
        owner  = "Ismail"
        managed_by = "Terraform"
    }
}