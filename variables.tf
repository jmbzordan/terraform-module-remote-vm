variable "ec2_ami" {
  description = "Amazon Machine Image da instancia"
  type = string
}

variable "ec2_type" {
  description = "Tipo da instancia EC2 a ser criada"
  type = string
}

variable "associate_public_ip" {
  description = "Indica se a instancia tem IP publico"
  type = bool
}