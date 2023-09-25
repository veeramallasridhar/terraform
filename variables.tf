variable "location" {
  default = "us-east-1"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "aws_vpc" {
  default = "10.0.0.0/16"
}
variable "aws_subnet" {
  default = "10.0.1.0/24"
}
variable "sri" {
  default = "10.0.2.0/24"
}