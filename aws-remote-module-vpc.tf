# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=outputs
# Documentação do módulo VPC utilizado no código

# Definição da VPC com base em módulo remoto da AWS
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"      # Origem do módulo AWS VPC
  version = "5.13.0"                            # Versão requerida

    #VPC
    vpc_tags                           = { Name = "vpc-terraform" }   # Nome da VPC na console AWS
    cidr                               = "10.0.0.0/16"                # CIDR da VPC
    azs                                = ["sa-east-1a", "sa-east-1b", "sa-east-1c"]   # Zonas a serem utilizadas na AWS
    #Subnet
    public_subnets                     = [ "10.0.1.0/24" ]              # Subnet da VPC
    public_subnet_tags                 = { Name = "subnet-terraform" }  # Define Nome da subnet na console AWS
    #Internet Gateway
    igw_tags                           = { Name = "internet-gateway-terraform" }  # Define nome do Internet Gateway na console AWS
    #Route Table
    default_route_table_tags           = { Name = "route-table-terraform" }       # Define nome da Route Table na console AWS

    default_security_group_name        = "security-group-"                        # Define nome do Security group 
    default_security_group_egress      =   [                
                                              { 
                                                from_port = 0
                                                to_port = 0                       # Regras de egress do default security Group
                                                protocol = -1
                                                cidr_blocks = "0.0.0.0/0"
                                              } 
                                           ]

    default_security_group_ingress     =   [ 
                                              { 
                                                from_port = 22                    # Regras de egress do default security Group
                                                to_port = 22                      
                                                protocol = "tcp"
                                                cidr_blocks = "0.0.0.0/0"
                                              } 
                                           ]

    default_security_group_tags = { Name = "security-group-terraform"}            # Define nome da security tag na console AWS
            
}