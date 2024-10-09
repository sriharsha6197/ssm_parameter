resource "aws_ssm_parameter" "foo" {
  for_each = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}