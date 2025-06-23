# General
aws_region       = "us-east-1"
secondary_region = ""
environment      = "dev"
project          = "sonerqube-server"


# vpc & network variables 

vpc_cidr = "10.0.0.0/16"
# Public Subnets (2 subnets in different AZs)
public_subnets = [
  { cidr = "10.0.0.0/20", availability_zone = "us-east-1a", map_public_ip_on_launch = true }
]



enable_s3_endpoint = false






# EC2 Configuration
ami_id        = "ami-020cba7c55df1f615"
instance_type = "t3.large"
keypair_name  = "soner_key"

# Example security group rules
ingress_rules = [
  {
    description = "Allow SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow sonerqube access"
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

]
