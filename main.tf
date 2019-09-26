# Security group

resource "aws_security_group" "tf_security_group" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.tf_vpc

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.sg_tags["security_group"]
  }
}