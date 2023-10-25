data "template_file" "mixfast_contrato_template" {
  template = file("./../../contrato/contrato.json")

  vars = {
    lambda_create = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:022874923015:function:mixfast_authorizer_cognito_create/invocations"
    lambda_confirm = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:022874923015:function:mixfast_authorizer_cognito_confirm/invocations"
    lambda_login = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:022874923015:function:mixfast_authorizer_cognito_login/invocations"
    credentials   = aws_iam_role.api_gateway_token_lambda_role.arn
  }
}