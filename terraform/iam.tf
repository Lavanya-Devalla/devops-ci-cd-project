resource "aws_iam_policy" "ecr_access" {
  name = "ECRAccessPolicy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability"
      ]
      Resource = "*"
    }]
  })
}
