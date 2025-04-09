resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

module "lambda_function" {
  source = "C:\\Users\\aws06\\Downloads\\sample"

  function_name = "lambdatest"
  handler       = "index.lambda_handler"
  runtime       = "python3.12"
  publish       = true

  source_path = "C:\\Users\\aws06\\Downloads\\sample"
  hash_extra  = "yo1"
}