terraform {
  backend "s3" {
    region  = "us-east-2"
    profile = "xxxxx"
    bucket  = "pre-production"
    key     = "pre-production.terraform.tfstate"
    encrypt  = true
    dynamodb_table = "terraform-lock"
  }
}