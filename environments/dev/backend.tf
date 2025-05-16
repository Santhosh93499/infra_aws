# environments/dev/backend.tf

terraform {
  backend "s3" {
    bucket         = "santhosh9349-tf-state" # CHANGE THIS to your S3 bucket name
    key            = "environments/dev/terraform.tfstate" # Path to your state file in the bucket
    region         = "eu-west-2"                         # CHANGE THIS to your AWS region
    dynamodb_table = "terraform-state-locking"              # CHANGE THIS to your DynamoDB table name
    encrypt        = true                                # Ensures state file is encrypted in S3
  }
}