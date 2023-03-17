variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-2"
}

variable "ecr_name" {
  description = "The list of ecr names to create"
  #type        = list(string)
  default     = null
}

variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}

variable "image_mutability" {
  description = "Provide image mutability"
  type        = string
  default     = "MUTABLE"
}

variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "KMS"
}

# The application's name
variable "app" {
}

# The environment that is being built
variable "environment" {
}

variable "saml_role" {
}

variable "container_name" {
  default = "app"
}


variable "container_port" {
}

# The port the load balancer will listen on
variable "lb_port" {
  default = "80"
}

# The load balancer protocol
variable "lb_protocol" {
  default = "HTTP"
}


variable "internal" {
  default = true
}

variable "deregistration_delay" {
  default = "30"
}

# The path to the health check for the load balancer to know if the container(s) are ready
variable "health_check" {
    default = ""
}

# How often to check the liveliness of the container
variable "health_check_interval" {
  default = "30"
}

# How long to wait for the response on the health check path
variable "health_check_timeout" {
  default = "10"
}

# What HTTP response code to listen for
variable "health_check_matcher" {
  default = "200"
}

variable "lb_access_logs_expiration_days" {
  default = "3"
}

# The VPC to use for the Fargate cluster
variable "vpc" {
}

# The private subnets, minimum of 2, that are a part of the VPC(s)
variable "private_subnets" {
}

variable "use_ecr_image" {
  default = true
}
variable "image_url" {
  type        = string
  description = "Full url for the ECR repository"
}
