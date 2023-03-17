resource "aws_ecs_cluster" "app" {
  name = "${var.app}-${var.environment}"
  capacity_providers = [
    "FARGATE"
  ]
  default_capacity_provider_strategy {
    capacity_provider = "FARGATE"
  }
  tags = var.tags
}
