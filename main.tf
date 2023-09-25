provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"

  tags = {
    Name = "docker"
  }
}
resource "aws_vpc" "my-first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "production"
  }
}
resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.my-first-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    name = "prod-subnet"
  }
}
