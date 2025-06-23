# Test file to verify SonarQube Terraform analysis
# This file contains intentional issues that SonarQube should detect

# Hardcoded secret (should trigger security issue)
variable "database_password" {
  default = "hardcoded-password-123"  # This should be flagged
}

# Overly permissive security group (should trigger security issue)
resource "aws_security_group" "test_bad_sg" {
  name = "test-bad-sg"
  
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Should be flagged as too permissive
  }
}

# Unencrypted S3 bucket (should trigger security issue)
resource "aws_s3_bucket" "test_bad_bucket" {
  bucket = "test-bad-bucket"
  # Missing encryption configuration - should be flagged
}

# Unused variable (should trigger code smell)
variable "unused_variable" {
  type = string
  default = "this is never used"
}

# Duplicated code block
resource "aws_instance" "test1" {
  ami           = "ami-12345"
  instance_type = "t2.micro"
  
  tags = {
    Name = "test1"
  }
}

# Exact duplicate (should trigger duplication issue)
resource "aws_instance" "test2" {
  ami           = "ami-12345"
  instance_type = "t2.micro"
  
  tags = {
    Name = "test2"
  }
}
