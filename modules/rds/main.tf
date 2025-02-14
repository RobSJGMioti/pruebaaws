resource "aws_db_instance" "rds_jaimeg" {
    identifier        = var.db_identifier
    engine            = "mysql"
    engine_version    = "8.0"
    instance_class    = var.db_instance_class
    allocated_storage = var.db_allocated_storage
    storage_type      = "gp2"
    username          = var.db_username
    password          = var.db_password
    db_name           = var.db_name
    publicly_accessible = var.publicly_accessible
    skip_final_snapshot  = true 
    tags = {
        Name        = var.db_identifier
        Environment = var.environment
    }
}