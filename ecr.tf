# ECR Repositories
module "ecr_repository" {
  source = "./modules/ecr"

  repository_name      = "${var.project}-ecr-${var.environment}"
  image_tag_mutability = "MUTABLE"
  scan_on_push         = true
  encryption_type      = "AES256"

  enable_lifecycle_policy = true
  max_image_count         = 30
  force_delete            = false

  tags = merge(local.default_tags, var.tags)
}


