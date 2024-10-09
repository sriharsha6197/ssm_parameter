resource "aws_ssm_parameter" "foo" {
  for_each = var.names
  name  = var.names[each.value]
  type  = var.types[each.value]
  value = var.values[each.value]
}