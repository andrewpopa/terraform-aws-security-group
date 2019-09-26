output "sg_id" {
  value = aws_security_group.tf_security_group.id
}

output "ingress_ports" {
  description = "List of ports accesible via ALB"
  value = join(",", aws_security_group.tf_security_group.ingress[*].from_port)
}