terraform {
    backend "s3" {
        bucket = "terraform-march-2022-backend-bucket-donotdelete"
        key = "session-5/terraform.tfstate"
        region = "us-east-1"
    }
}

# Remote Backend is a plugin. Plugin is a feature