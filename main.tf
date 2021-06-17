terraform {
  backend "s3" {
      encrypt = true
      bucket = "terraform-hclmsi"
      key = "deploy-stage/terraform.tfstate"
      region = "ap-south-1"
      dynamodb_table = "terrform-msi2"
  }
}
provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}
/*
# group definition
resource "aws_iam_group" "terraform_admin" {
  name = "terraform_admin"
}

resource "aws_iam_policy_attachment" "administrators-attach" {
  name       = "administrators-attach"
  groups     = [aws_iam_group.terraform_admin.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# user
resource "aws_iam_user" "admin1" {
  name = "admin1"
}

resource "aws_iam_user" "admin2" {
  name = "admin2"
}

resource "aws_iam_group_membership" "administrators-users" {
  name = "administrators-users"
  users = [
    aws_iam_user.admin1.name,
    aws_iam_user.admin2.name,
  ]
  group = aws_iam_group.terraform_admin.name
}

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
}
*/
#terraform {
#  backend "s3" {
#    bucket = "terraform-state-xx70dpnh"
#    key    = "terraform.tfstate"
#    region = "ap-south-1"
#  }
#}