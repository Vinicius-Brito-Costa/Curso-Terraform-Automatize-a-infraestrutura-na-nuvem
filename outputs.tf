output "dev0" {
  value = aws_instance.dev[0].public_ip
}
output "dev1" {
  value = aws_instance.dev1.public_ip
}