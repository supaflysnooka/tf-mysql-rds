resource "aws_db_instance" "mysqldb" {
  engine              = "mysql"
  engine_version      = var.engine_version
  name                = var.dbname
  identifier          = var.dbname
  allocated_storage   = var.storage
  storage_type        = var.storage_type
  instance_class      = var.instance_class
  username            = "mysqluser"
  password            = jsondecode(aws_secretsmanager_secret_version.secret.secret_string)["rds_password"]
  skip_final_snapshot = true
}
