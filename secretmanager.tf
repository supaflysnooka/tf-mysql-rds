resource "aws_secretsmanager_secret" "secret" {
  description = "TestDB"
  name        = "CharterTestDB"
}

resource "random_string" "rds_password" {
  length           = 16
  special          = true
  override_special = "!@#$%&*()"
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = <<EOF
{
  "rds_password": "${random_string.rds_password.result}"
  }
EOF
}
