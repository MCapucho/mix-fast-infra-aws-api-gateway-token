data "template_file" "mixfast_contrato_template" {
  template = file("./../../contrato/contrato.json")

  vars = {
    lambda_create = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:022874923015:function:mixfast_lambda_authorizer/invocations"
    credentials   = aws_iam_role.api_gateway_lambda_role.arn
  }
}