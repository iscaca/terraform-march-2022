terraform {
    backend "s3" {
        bucket = "terraform-march-2022-backend-bucket-donotdelete"
        key = "session-6/_env_/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-march-2022-lock"
    }
}