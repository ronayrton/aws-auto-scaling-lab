output "load_balancer_dns" {
  description = "URL do Load Balancer"
  value       = aws_lb.my_lb.dns_name
}

output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main.id
}
