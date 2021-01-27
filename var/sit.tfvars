charter = {
  org = "internal"
  env = "mysql-rds-sit"
}

aws = {
  primary = {
    region          = "us-east-2",
    assume_role_arn = "arn:aws:iam::123456789012:role/OrganizationAccountAccessRole"
  }
}

dbname = "sitdb"
