variable charter {
  type = object(
    {
      org = string
      env = string
    }
  )
}

variable aws {
  type = map(object(
    {
      region          = string,
      assume_role_arn = string
    }
  ))
}

variable "dbname" {
  description = "Name for the DB"
  type        = string
}

variable "engine_version" {
  description = "MySQL database engine version"
  default     = "8.0.17"
}

variable "storage_type" {
  description = "Standard, SSD provisioned or IOPS SSD"
  default     = "gp2"
}

variable "storage" {
  description = "Storage in gibibytes"
  default     = "50"
}

variable "instance_class" {
  description = "Instance type to use"
  default     = "db.m5.large"
}

