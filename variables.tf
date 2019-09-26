# Security

variable "security_group_name" {
  type    = string
  default = "tf-aws-security-group"
}

variable "security_grou_description" {
  type    = string
  default = "tf-security-group-description"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [0]
}

variable "sg_tags" {
  type = map
  default = {
      security_group = "allow-traffic"
  }
}

variable "tf_vpc" {
  default = ""
  description = "VPC where security group will be created"
}
