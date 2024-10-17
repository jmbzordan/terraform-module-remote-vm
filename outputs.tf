output "subnet_id" {
    description = "Subnet da VPC"
    value = module.vpc.public_subnets
}

output "security_group" {
  description = "Security group"
  value = module.vpc.default_security_group_id
}

output "ip_vm" {
  description = "IP address da instancia EC2 criada"
  value = module.ec2_instance.public_ip
}