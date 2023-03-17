variable "dockerfile_dir" {
  type = string
  description = "directory that contains the Dockerfile"
}

variable "ecr_repository_url" {
  type        = string
  description = "ECR respository url"
}

variable "docker_image_tag" {
  type        = string
  description = "This is the tag which will be used for the image that you created"
  default     = "latest"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-2"
}