output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.cyber_threat_ec2.public_ip
}

output "dashboard_url" {
  description = "Cyber Threat Dashboard URL"
  value       = "http://${aws_instance.cyber_threat_ec2.public_ip}:30500/dashboard"
}

output "ssh_command" {
  description = "SSH command to connect to EC2"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ubuntu@${aws_instance.cyber_threat_ec2.public_ip}"
}
