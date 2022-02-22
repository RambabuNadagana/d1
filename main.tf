resource "aws_launch_template" "example" {
  name_prefix   = "example"
    image_id      = ami-0629230e074c580f2
    instance_type = t2.micro
    security_groups    = sg-0bb5391635b3c304es
    key_name = "jenkins"
    iam_instance_profile = "ram-s3-role"
}

resource "aws_autoscaling_group" "example" {
  availability_zones = ["us-east-2a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.example.id
      }
     }
  }
}
