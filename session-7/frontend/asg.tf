resource "aws_autoscaling_group" "frontend_asg" {
  name                 = "test-asg"
  min_size             = 1
  max_size             = 3
  desired_capacity     = 3
  launch_configuration = aws_launch_configuration.as_conf.name
  vpc_zone_identifier  = var.subnet_id
  
  
  tags = merge (
    local.common_tags, { propagate_at_lunch = true,
      Name = replace(local.name, "rtype", "ASG") 
      } 
      
      )
  
      
  
     
}