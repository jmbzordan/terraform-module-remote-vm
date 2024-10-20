# terraform-aws-ec2
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.67.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_instance"></a> [ec2\_instance](#module\_ec2\_instance) | terraform-aws-modules/ec2-instance/aws | 5.7.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.13.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_associate_public_ip"></a> [associate\_public\_ip](#input\_associate\_public\_ip) | Indica se a instancia tem IP publico | `bool` | n/a | yes |
| <a name="input_ec2_ami"></a> [ec2\_ami](#input\_ec2\_ami) | Amazon Machine Image da instancia | `string` | n/a | yes |
| <a name="input_ec2_type"></a> [ec2\_type](#input\_ec2\_type) | Tipo da instancia EC2 a ser criada | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip_vm"></a> [ip\_vm](#output\_ip\_vm) | IP address da instancia EC2 criada |
| <a name="output_security_group"></a> [security\_group](#output\_security\_group) | Security group |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | Subnet da VPC |
<!-- END_TF_DOCS -->