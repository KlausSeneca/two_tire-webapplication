# Step 10 - Add output variables
output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  value = aws_instance.bastion.private_ip
}


# Step 10 - Add output variables
output "bastion_sg" {
  value = aws_security_group.bastion_sg.id
}