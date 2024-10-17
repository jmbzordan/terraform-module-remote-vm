# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest?tab=inputs
# Documentação do módulo para criação de Instancia EC2

# Definição de criação de instancia EC2 através de módulo remoto
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.0"

  ami                               = var.ec2_ami                                   # Variável que armazena imagem da isntancia EC2
  instance_type                     = var.ec2_type                                  # Variável que armazena tipo da instância
  key_name                          = module.key_pair.key_pair_name                 # Variável que armazena key pair
  subnet_id                         = module.vpc.public_subnets[0]                  # Variável que armazena a subnet utilizada na instância. Como public_subnets do módulo é uma lista, pegamos o primeiro e único valor
  vpc_security_group_ids            = [ module.vpc.default_security_group_id ]      # Variável que armazena o ID do security group
  associate_public_ip_address       = var.associate_public_ip                       # Define se instância possui IP publico

  tags = {
    Name = "ec2-instance-terraform"
  }
}