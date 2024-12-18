# Saídas com detalhes como URL do Load Balancer

output "load_balancer_dns" {
  value = aws_lb.my_lb.dns_name
}


output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main.id
}
