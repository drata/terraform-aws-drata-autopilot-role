output "role_arn" {
  value       = aws_iam_role.drata.arn
  description = "The ARN of the role"
}
