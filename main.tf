resource "aws_spot_instance_request" "rabbitmqr" {
  ami                  = data.aws_ami.ownami.image_id
  instance_type        = var.instance_type
  subnet_id            = var.subnet_ids[0]
  wait_for_fulfillment = true
}

resource "aws_ec2_tag" "spottags" {
  resource_id = aws_spot_instance_request.rabbitmqr.id
  key = var.key
  value = var.value
}
