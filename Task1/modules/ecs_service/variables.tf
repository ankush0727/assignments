variable "ecs_name" {
  description = "Name ecs cluster"
}

variable "tags" {
  type = map(string)
}

# name of the application
variable "app" {
}

# environment name
variable "environment" {
}

variable "container_port" {
}

# target group listerner port
variable "lb_port" {
  default = "80"
}

# target group protocol
variable "lb_protocol" {
  default = "HTTP"
}

variable "internal" {
  default = true
}

variable "deregistration_delay" {
  default = "30"
}
 
variable "health_check" {
}

variable "health_check_interval" {
  default = "30"
}

variable "health_check_timeout" {
  default = "10"
}

variable "health_check_matcher" {
  default = "200"
}

variable "lb_access_logs_expiration_days" {
  default = "3"
}

variable "vpc" {
}

variable "private_subnets" {
}

variable "container_name" {
  default = "app"
}

variable "replicas" {
  default = "1"
}

variable "ecs_autoscale_min_instances" {
  default = "1"
}

variable "ecs_autoscale_max_instances" {
  default = "8"
}

variable "task_role_arn" {
  description = "ARN of the role to assign to the launched container"
  type        = string
  default     = null
}

variable "image_url" {
  type        = string
  description = "url of the image"
}

variable "ecs_id" {
  description = "id of ecs cluster"
}

variable "domain" {
}

variable "https_port" {
  default = "443"
}