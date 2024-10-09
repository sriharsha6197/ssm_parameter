variable "parameters" {
  type = list(object({
    name  = string
    type  = string
    value = string
  }))

  default = [
    {
      name  = "prod.rds.master_username"
      type  = "String"
      value = "admin"
    },
    {
      name  = "prod.rds.master_password"
      type  = "SecureString"
      value = "Harsha123"
    }
  ]
}