# Security

variable "security_group_name" {
  description = "SG name"
  type    = string
  default = "tf-aws-security-group"
}

variable "security_group_description" {
  description = "SG description"
  type    = string
  default = "tf-security-group-description"
}

variable "ingress_ports" {
  description = "List of ingress ports"
  type        = list(number)
  default     = [0]
}

variable "sg_tags" {
  description = "Map for sg tags"
  type = map
  default = {
      security_group = "allow-traffic"
  }
}

variable "tf_vpc" {
  description = "VPC where security group will be created"
  default = "default"
}
