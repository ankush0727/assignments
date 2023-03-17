Usage

# Sets up Terraform to run to initialize
$ terraform init --backend-config="{dev/production/pre-production/uat}/backend.hcl" 

# Executes the Terraform plan
$ terraform plan -var-file="{dev/production/pre-production/uat}/terraform.tfvars"

# Executes the Terraform apply
$ terraform apply -var-file="{dev/production/pre-production/uat}/terraform.tfvars"

# Executes the Terraform destroy
$ terraform destroy -var-file="{dev/production/pre-production/uat}/terraform.tfvars"


#Create the input file named as terraform.tfvars 
aws_region = "us-east-2"

ecr_name = "task1/demoapp"
image_mutability = "IMMUTABLE"
app = "demo"
environment = "dev"
container_port = "8080"
health_check = "/healthcheck"
vpc = "vpc-0eebd3f25ad4b5918"
private_subnets = "subnet-04e7fbe39c471e7c8,subnet-0346b089626af69d8"
use_ecr_image = false
image_url = "quay.io/turner/turner-defaultbackend:0.2.0"
tags = {
  "Environment" = "Dev"
}