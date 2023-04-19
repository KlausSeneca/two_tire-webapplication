terraform {
  backend "s3" {
    bucket = "group-9" // Bucket where to SAVE Terraform State
    key    = "final-net/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                     // Region where bucket is created
  }
}