resource "aws_instance" "project-3" {
  count         = length(var.ec2_instance)
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = var.choose_type[count.index]
  user_data     = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y terraform
  EOF
  tags = {
    Name = var.ec2_instance[count.index]
  }
}
