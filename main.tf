resource "aws_ssm_parameter" "foo" {
  for_each = var.names
  name  = var.names[each.key]
  type  = var.types[each.key]
  value = var.values[each.key]
}