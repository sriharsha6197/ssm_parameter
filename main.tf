resource "aws_ssm_parameter" "foo" {
  for_each = { for param in var.parameters : param.name => param }
  name = each.value.name
  type = each.value.type
  value = each.value.value
  overwrite = true
}