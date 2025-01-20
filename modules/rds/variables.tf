variable "db_identifier" {
  description = "jaimegc-rds"
  type        = string
  default     = "jaimegc-rds"
}

variable "db_instance_class" {
  description = "db.t3.micro"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "10"
  type        = number
  default     = 10
}

variable "db_username" {
  description = "admin"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "jaimegcadmin"
  type        = string
  sensitive   = true
  default = "jaimegcadmin"
}

variable "db_name" {
  description = "jaimegc_database"
  type        = string
  default     = "jaimegc_database"
}

variable "publicly_accessible" {
  description = false
  type        = bool
  default     = false
}

variable "environment" {
  description = "dev"
  type        = string
  default     = "dev"
}