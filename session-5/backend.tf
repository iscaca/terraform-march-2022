terraform {
    backend "s3" {
        bucket = "terraform-march-2022-backend-bucket-donotdelete"
        key = "session-5/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-march-2022-lock"
    }
}

# Remote Backend is a plugin. Plugin is a feature
# You can't use any variables for Backend Configuration 
# We use Terraform Lock = DynamoDB Table