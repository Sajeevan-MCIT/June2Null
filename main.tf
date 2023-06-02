provider "aws" {
  region     = "us-east-1"
}

  # The following null resource will print message "Hello World"
resource "null_resource" "null_resource_simple" {
# This trigger will only execute once when it detects the instance id of EC2 instance 
  triggers = {
    id = aws_instance.ec2_example.id    # to execute it every time replace - id = time()
  }
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}

