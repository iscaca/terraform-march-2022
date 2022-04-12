# This feature is called data sourcing the remote backend
# Data source only fetches the data from outputs

data "terraform_remote_state" "backend"{
    backend = "s3"
    config = {
        bucket = "terraform-march-2022-backend-bucket-donotdelete"
        key = "session-7/backend/terraform.tfstate"
        region = "us-east-1"
    }
}

output "password"{
    value = data.terraform_remote_state.backend.outputs.db_password
}