provider aws {
  region = var.aws["primary"]["region"]
  #  Enable if assume role is required
  #  assume_role {
  #    role_arn = var.aws["primary"]["assume_role_arn"]
  #  }
}

