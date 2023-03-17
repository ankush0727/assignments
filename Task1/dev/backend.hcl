terraform {
  backend "s3" {
    region  = "us-east-2"
    profile = "xxxxx"
    bucket  = "dev"
    key     = "dev.terraform.tfstate"
    encrypt  = true
    dynamodb_table = "terraform-lock"
  }
}