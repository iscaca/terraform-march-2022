locals {
  name = "aws-${var.stage}-${var.region}-${var.env}-${var.project}-rtype"
  
  common_tags = {
    env = var.env
    PROJECT = var.project
    TEAM = "Cloud"
    OWNER = "Ismail"
    Managed_by = "Terraform"
  }
}