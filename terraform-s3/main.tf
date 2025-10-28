# Bloco 1: Informa ao Terraform QUAL provedor de nuvem vamos usar (AWS).
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Bloco 2: Configura o provedor. (Como já rodamos "aws configure",
# o Terraform vai usar essas credenciais automaticamente).
provider "aws" {
  region = "us-east-1"
}
# Bloco 3: A "PLANTA" (O que queremos construir)
# "resource" = Quero construir um recurso
# "aws_s3_bucket" = O tipo do recurso (um bucket S3)
# "meu_primeiro_bucket" = Um nome LÓGICO (só para o Terraform)
resource "aws_s3_bucket" "meu_primeiro_bucket" {
  # O nome REAL do bucket na AWS.
  # !! IMPORTANTE: Nomes de bucket S3 são GLOBAIS (únicos no mundo).
  # Por isso, coloque seu nome e uma data para ser único.
  bucket = "jorgefelipemr-bucket-teste-20251028"

  # tags (etiquetas) são boas práticas para organizar recursos
  tags = {
    Name        = "Meu Primeiro Bucket"
    Environment = "Estudos"
    Owner       = "Jorge Ribeiro"
  }
}
