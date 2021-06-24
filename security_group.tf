resource "aws_security_group" "dev_sec_ssh" {
  name        = "dev_sec_ssh"
  description = "dev_sec_ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.meu_ip}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "dev_sec_ssh"
  }
}
resource "aws_security_group" "dev_sec_ssh_us_east_2" {
  provider    = "aws.us-east-2"
  name        = "dev_sec_ssh"
  description = "dev_sec_ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.meu_ip}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "dev_sec_ssh"
  }
}