output "cluster_name" {
  value = aws_ecs_cluster.app.name
}

output "cluster_id" {
    value = aws_ecs_cluster.app.id
}