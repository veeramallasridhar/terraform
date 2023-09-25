provider "aws" {
  region = var.location
}

resource "aws_instance" "web" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = var.instance_type
  key_name = "sridhar"
    
  tags = {
    Name = "docker"
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = "sridhar"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7UFEmpBeuIKQz2BLDWJeDSQUTnYQCxLkezqibCZ4ADyYboP9rnudJ4hzlSh2KDURrBW3LkJzu9jSvsc+iCjVTj3HlUgxC4YXJxECoQJsrNw75HenxyNSSVzet5t5kGktW/mEJezKd2HZ+ywU2Xo0QThgs9QjzWvqfZfvH45jWWY7kM8Al8G1iSajS+Ei9PhYN5tQQbC6GlLUdlg8UGgJ1wv/JRRcJJxanYqc0zHPXXhw1cENRmx/vHkTWSZGTirFRIyQW+H+7qYFG/pzWbJMaCf8U6gfYp/Ph+fSkDMuEgSVa/Pr4QT8YlzmwSAba7sVLr/3gJdPtIAaTgH3RQNpujJXfOOIDBfyu50WV2HXecW7GRE0u5SbHsdjbZzYS64xW9hPKqtz8ywWG9XBuNwYeOTVIqvjAbZjtCKArCU01thfQuaYME/gvb0vJEjEXCyNElG//uZTRkc2pohESAUQEgY0ZekCfFIIXSR9WhBR42jpBviSWtO2Br69khdaH0Ic= dell@DESKTOP-2OJA960"
}


resource "aws_vpc" "my-first-vpc" {
  cidr_block = var.aws_vpc
  tags = {
    name = "production"
  }
}
resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.my-first-vpc.id
  cidr_block = var.aws_subnet
  tags = {
    name = "prod-subnet1"
  }
}
resource "aws_subnet" "subnet-2" {
  vpc_id = aws_vpc.my-first-vpc.id
  cidr_block = var.sri
  tags = {
    name = "prod-subnet2"
  }
}