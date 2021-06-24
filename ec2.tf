resource "aws_instance" "dev" {
  count                  = 1
  ami                    = var.amis["us_east_1"]
  instance_type          = "t2.micro"
  key_name               = "terraform"
  vpc_security_group_ids = [aws_security_group.dev_sec_ssh.id]
  tags = {
    Name = "dev-${count.index}"
  }
}
resource "aws_instance" "dev1" {
  ami                    = var.amis["us_east_1"]
  instance_type          = "t2.micro"
  key_name               = "terraform"
  vpc_security_group_ids = [aws_security_group.dev_sec_ssh.id]
  depends_on = [
    aws_s3_bucket.dev4
  ]
  tags = {
    Name = "dev-1"
  }
}

resource "aws_instance" "dev2" {
  provider               = aws.us-east-2
  ami                    = var.amis["us_east_2"]
  instance_type          = "t2.micro"
  key_name               = "terraform"
  vpc_security_group_ids = [aws_security_group.dev_sec_ssh_us_east_2.id]
  depends_on = [
    aws_dynamodb_table.banco
  ]
  tags = {
    Name = "dev-2"
  }
}