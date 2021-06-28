output "role_name" {
  value = aws_iam_role.devts_role.name
}
output "ec2_profile_name" {
  value = aws_iam_instance_profile.devts-ec2-profile.name
}
