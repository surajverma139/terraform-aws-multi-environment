resource "aws_instance" "app" {
  count = var.instance_count

  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[
    count.index % length(data.aws_subnets.default.ids)
  ]

  tags = {
    Name        = "${var.project_name}-${var.environment}-${count.index + 1}"
    Environment = var.environment
    Project     = var.project_name
  }
}