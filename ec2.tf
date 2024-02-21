resource "aws_instance" "app_server" {
  ami           = "ami-0cf10cdf9fcd62d37"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet_1.id

  tags = {
    Name = "ExampleAppServerInstance"
  }
}