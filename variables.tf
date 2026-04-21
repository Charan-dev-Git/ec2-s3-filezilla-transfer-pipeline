variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Unique S3 bucket name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name in AWS"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Your public IP in CIDR format for SSH access"
  type        = string
}