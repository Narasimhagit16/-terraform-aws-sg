
resource "aws_security_group" "security_group" {
  name        = "${var.project_name}-${var.environment}-${var.sg_name}"
  description = var.description
  vpc_id      = var.vpc_id
  
  dynamic ingress {
    for_each = var.sg_ingress-rules
    content {
    description      = "TLS from VPC"
    from_port        = ingress.value["from_port"]
    to_port          = ingress.value["to_port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["cidr_blocks"]
      
    }

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }


  tags = merge(var.common_tags, var.sg_tags,
  { Name= "${var.project_name}-${var.environment}-${var.sg_name}"
   }
  
  )
    
  }
