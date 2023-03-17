resource "null_resource" "ecr_image" {
  provisioner "local-exec" {
    command = "bash ${path.module}/build.sh ${var.dockerfile_dir} ${var.ecr_repository_url}:${var.docker_image_tag} ${var.aws_region}"
  }
}