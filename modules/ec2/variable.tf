variable "ami_id" {
  description = "ami-0df8c184d5f6ae949" # AMAZON LINUX 2023 AMI
  type        = string
  default     = "ami-0df8c184d5f6ae949"
}

variable "instance_type" {
  description = "t2.large"
  type        = string
  default     = "t2.large"
}

variable "instance_name" {
  description = "EC2_JAIME_G"
  type        = string
  default     = "EC2_JAIME_G"
}

variable "environment" {
  description = "Dev."
  type        = string
  default     = "Dev."
}