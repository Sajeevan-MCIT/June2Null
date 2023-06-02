provider "aws" {
  region     = "us-east-1"
}

  # The following null resource will print message "Hello World"
resource "null_resource" "null_resource_simple" {
  provisioner "local-exec" {
    command = "echo Wagwan World"
  }
}

