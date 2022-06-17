terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_iam_user" "ib"{
  name = "testuser"
  path = "/system/"

}

/*
resource "aws_instance" "myec2"{
    ami = "ami-0022f774911c1d690"
    instance_type = var.instancetype
    tags = {
      name = "Hello World"
      department = "Information Technology"
    }
}

*/
/*

resource "aws_eip" "ib" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.ib.id
}
*/

/*
resource "aws_security_group" "allow_tls" {
  name = "shah-security_group"
  description = "Allow TLS inbound traffic"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = var.vpn_ip
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = var.vpn_ip
  }

  ingress {
    from_port = 53
    to_port = 53
    protocol = "tcp"
    cidr_blocks = var.vpn_ip
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
*/
