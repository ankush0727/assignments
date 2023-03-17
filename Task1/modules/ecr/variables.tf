variable "ecr_name" {
  description = "The name of the ECR registry"
  type        = any
  default     = null
}

variable "image_mutability" {
  description = "Provide image mutability"
  type        = string
  default     = "IMMUTABLE"
}


variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "KMS"
}

variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}

variable "lifecycle_policy" {
  type        = string
  description = "ECR Lifecycle Policy (json string) to manage the image lifecycles in the ECR repository. Defaults to keep only the last 100 images."
  default     = <<L_POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "selection": {
        "countType": "imageCountMoreThan",
        "countNumber": 100,
        "tagStatus": "any"
      },
      "description": "Only keep 100 images",
      "rulePriority": 10
    }
  ]
}
L_POLICY
}

variable "repository_policy" {
  type        = string
  description = "ECR Repository Policy (json string) to manage access to the ECR repository. Defaults to allow CodeBuild service to pull any image from this ECR repo."
  default     = <<R_POLICY
{
  "Version": "2008-10-17",
  "Statement": [
	{
	  "Sid": "pull",
	  "Effect": "Allow",
	  "Principal": {
		"Service": "codebuild.amazonaws.com"
	  },
	  "Action": [
		"ecr:GetDownloadUrlForLayer",
		"ecr:BatchGetImage",
		"ecr:BatchCheckLayerAvailability"
	  ]
	}
  ]
}
R_POLICY
}