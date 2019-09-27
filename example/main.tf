module "vpc" {
  source = "github.com/andrewpopa/terraform-aws-vpc"
  cidr_block = "172.16.0.0/16"
  vpc_subnets = ["172.16.10.0/24", "172.16.11.0/24", "172.16.12.0/24"] 
  vpc_tags = {
    vpc         = "my-aws-vpc"
    subnet      = "subnet"
    internet_gw = "my-internet-gateway"
  }
}

module "security-group" {
  source = "github.com/andrewpopa/terraform-aws-security-group"
  
  # Security group
  security_group_name       = "my-aws-security-group"
  security_group_description = "my-aws-security-group-descr"
  ingress_ports             = [22, 443, 8800, 5432]

  tf_vpc = module.vpc.vpc_id
}
