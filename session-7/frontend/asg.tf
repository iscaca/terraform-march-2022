resource "aws_autoscaling_group" "frontend_asg" {
  name                 = "test-asg"
  min_size             = 1
  max_size             = 2
  desired_capacity     = 2
  launch_configuration = aws_launch_configuration.as_conf.name
  vpc_zone_identifier  = var.subnet_id
  
  tag = {
    key                 = "Name"
    value               = replace(local.name, "rtype", "ASG")  
    propagate_at_launch = true
  } 
  
  
  
      
  
     
}