variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE"
  type        = string
  default     = "IMMUTABLE"  # Security: Prevent tag overwriting
}

variable "scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository"
  type        = bool
  default     = true
}

variable "encryption_type" {
  description = "The encryption type for the repository. Must be AES256 or KMS"
  type        = string
  default     = "KMS"  # Security: Use KMS for better key management
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for encryption. Only required if encryption_type is KMS"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "enable_lifecycle_policy" {
  description = "Whether to enable the lifecycle policy"
  type        = bool
  default     = true
}

variable "max_image_count" {
  description = "How many images to keep in the repository"
  type        = number
  default     = 30
}

variable "force_delete" {
  description = "Whether to force delete the repository even if it contains images"
  type        = bool
  default     = false
}
