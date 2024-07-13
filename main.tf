provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "admin" {
    ami = "ami-0a0e5d9c7acc336f1"
    instance_type = "t2.micro"
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}