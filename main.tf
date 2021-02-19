data "aws_iam_policy_document" "drata_autopilot_assume_role" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = [var.drata_aws_account_arn]
    }

    dynamic "condition" {
      for_each = var.role_sts_externalid != null ? [true] : []
      content {
        test     = "StringEquals"
        variable = "sts:ExternalId"
        values   = [var.role_sts_externalid]
      }
    }
  }
}

resource "aws_iam_role" "drata" {
  name        = var.role_name
  path        = var.role_path
  description = var.role_description

  assume_role_policy = data.aws_iam_policy_document.drata_autopilot_assume_role.json

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "security_audit" {
  role       = aws_iam_role.drata.name
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
}
