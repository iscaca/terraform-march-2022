# TARGET GROUPS
resource "aws_lb_target_group" "lb_tg"{
    name               = "lb-tg"
    port               = 80
    protocol           = "HTTP"
    target_type        = "instance"

    }

resource "aws_lb_listener" "http_listener" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = "80" 
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_tg.arn
  }
}

# LOAD BALANCER
resource "aws_lb" "app_lb"{
    name               = "lb-app"
    internal           = false
    load_balancer_type = "application"
    security_groups    = [aws_security_group.my_sg.id]
    subnets            = var.subnet_id




}