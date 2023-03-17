terraform {
  backend "s3" {
    region  = "us-east-2"
    profile = "xxxxx"
    bucket  = "production"
    key     = "production.terraform.tfstate"
    encrypt  = true
    dynamodb_table = "terraform-lock"
  }
}