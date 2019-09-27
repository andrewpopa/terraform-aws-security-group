output "sg_id" {
  description = "Security group ID"
  value = aws_security_group.tf_security_group.id
}

output "ingress_ports" {
  description = "List of ports accessible via ALB"
  value = join(",", aws_security_group.tf_security_group.ingress[*].from_port)
}