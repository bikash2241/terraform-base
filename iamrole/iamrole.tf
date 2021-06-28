
resource "aws_iam_role" "devts_role" {
  name = var.role_name
  assume_role_policy = "${file("C:\\Software\\Data\\Important\\Devops\\Valaxy_AWS\\terraform-code\\modules\\iamrole\\ec2-assume-policy.json")}"
tags = {
    tag-key = "tag-value"
  }
}


data "aws_iam_policy" "SSM_policy" {
  name = var.EC2_to_SSM
}

data "aws_iam_policy" "S3_policy" {
  name = var.EC2_to_S3
}

resource "aws_iam_role_policy_attachment" "devts-attach_SSM_policy" {
  role       = aws_iam_role.devts_role.name
  policy_arn = data.aws_iam_policy.SSM_policy.arn
}

resource "aws_iam_role_policy_attachment" "devts-attach_S3_policy" {
  role       = aws_iam_role.devts_role.name
  policy_arn = data.aws_iam_policy.S3_policy.arn
}

resource "aws_iam_instance_profile" "devts-ec2-profile" {
  name = "devts-ec2-profile"
  role = aws_iam_role.devts_role.name
}


