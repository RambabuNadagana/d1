provider "aws" {
  region = "us-east-2"
}
resource "aws_lb" "test" {
  name               = "application"
  internal           = false
  load_balancer_type = "application"
  security_groups    = "sg-0bb5391635b3c304e"
  subnets            = "subnet-004e41b3ff4a0aa5f"
}
