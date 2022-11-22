

resource "aws_instance" "web1" {
  ami           = "ami-067e6178c7a211324"
  instance_type = "t2.micro"
  key_name          = "keyPair-sydney-towfiqhassan.aol"
  availability_zone = "ap-southeast-2a"
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  subnet_id                   = aws_subnet.public_1.id
  associate_public_ip_address = true
  user_data = <<-EOF
        #!/bin/bash
        yum update -y
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "<html><body><h1>Hi there</h1></body></html>" > /var/www/html/index.html
        EOF

  tags = {
    Name = "WEB_EC2_instance"
  }

}
