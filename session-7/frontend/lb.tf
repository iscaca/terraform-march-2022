# TARGET GROUPS
resource "aws_lb_target_group" "lb_tg"{
    name               = "lb_tg"
    port               = 80
    protocol           = "HTTP"
    target_type        = "instance"
    
    default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_tg.arn
  }
}



resource "aws_autoscaling_attachment" "terramino" {
  autoscaling_group_name = aws_autoscaling_group.lb_tg.id
  alb_target_group_arn   = aws_lb_target_group.lb_tg.arn
}



# LOAD BALANCER
resource "aws_lb" "app_lb"{
    name               = "lb_app"
    internal           = false
    load_balancer_type = "application"
    security_groups    = [aws_security_group.my_sg.id]
    subnets            = var.subnet_id

}