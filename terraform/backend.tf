# Configuração do backend remoto (opcional: salvar o state no S3)

terraform {
  backend "s3" {
    bucket = "backend-s3.tf "
    key    = "aws-auto-scaling-lab/terraform.tfstate"
    region = "us-east-1"

    # State Locking com DynamoDB
    dynamodb_table = "erraform-state-locking"
    encrypt        = true
  }
}

