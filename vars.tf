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
    },
    {
      name  = "prod.expense.frontend.backend_url"
      type  = "String"
      value = "http://prod.backend.harsha.shop/"
    },
    {
      name = "prod.rds.endpoint",
      type = "String",
      value = "prod-rds.cluster-chgkeqmsanua.us-east-1.rds.amazonaws.com"
    },
    {
      name = "expense.prometheus.username",
      type = "String",
      value = "admin"
    },
    {
      name = "expense.prometheus.password",
      type = "SecureString",
      value = "admin"
    }
  ]
}