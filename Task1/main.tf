module "ecr" {
  source           = "./modules/ecr"
  ecr_name         = var.ecr_name
  tags             = var.tags
  image_mutability = var.image_mutability
}

module "ecr_image" {
  source = "./modules/ecr_image" 
  dockerfile_dir = "docker/"
  ecr_repository_url = module.ecr.repository.repository_url
  docker_image_tag = "v2"
}

module "ecs_cluster" {
  source           = "./modules/ecs_cluster"
  app              = var.app
  environment      = var.environment
  tags             = var.tags
}

module "ecs_service" {
    source = "./modules/ecs_service"
    ecs_name = module.ecs_cluster.cluster_name
    ecs_id   = module.ecs_cluster.cluster_id
    app = var.app
    environment = var.environment
    tags             = var.tags
    saml_role  = var.saml_role
    container_port = var.container_port
    health_check = var.health_check
    vpc = var.vpc
    private_subnets = var.private_subnets
    image_url = var.use_ecr_image ? module.ecr_image.ecr_image_url : var.image_url
}