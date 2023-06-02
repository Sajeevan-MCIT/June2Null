provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["/Users/rahulwagh/.aws/credentials"]
  resource "aws_instance" "ec2_example" {
  ami           = "ami-0715c1897453cabd1"
  instance_type =  "t2.micro"
  tags = {
    Name = "Terraform EC2 "
  }
}
  # The following null resource will print message "Hello World"
resource "null_resource" "null_resource_simple" {
  provisioner "local-exec" {
    command = "Wagwan World"
  }
}
