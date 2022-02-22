provider "aws" {
  region = "us-east-2"
}
resource "aws_launch_template" "as_conf" {
  name_prefix   = dbms
  image_id      = ami-0629230e074c580f2
  instance_type = t2.micro
  security_groups    = sg-0bb5391635b3c304es
  user_data = "${file("userdata.sh")}"
}
resource "aws_autoscaling_group" "bar" {
  name                 = var.name 
  depends_on           = ["aws_launch_template.as_conf"]
  launch_template = aws_launch_template.as_conf.name
  min_size             = 1
  max_size             = 2
  desired_capacity     = 1
  target_group_arns   = [var.target_group_arns]
 availability_zones = us-east-2a
}
