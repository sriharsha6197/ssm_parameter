resource "aws_ssm_parameter" "foo" {
  for_each = var.parameters
  name = var.parameters[each.key].name
  type = var.parameters[each.key].type
  value = var.parameters[each.key].value
}