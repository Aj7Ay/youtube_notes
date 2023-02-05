# configured aws provider with proper credentials
provider "aws" {
  region    = 
  profile   = 
}

# create an iam user
resource "aws_iam_user" "iam_user" {
  name = 
}

# give the iam user programatic access
resource "aws_iam_access_key" "iam_access_key" {
  user = 
}

# create the inline policy
data "aws_iam_policy_document" "s3_get_put_detele_policy_document" {
  statement {
    actions = [
    ]

    resources = [
    ]
  }
}

# attach the policy to the user
resource "aws_iam_user_policy" "s3_get_put_detele_policy" {
  name    = 
  user    = 
  policy  = 
}
