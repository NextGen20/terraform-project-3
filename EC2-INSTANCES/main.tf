variable "ec2_instance" {
  type    = list(string)
  default = ["Prod", "Test", "Slave", "second-Prod"]
}

variable "choose_type" {
  type    = list(string)
  default = ["t2.micro", "t2.small", "t2.large"]
}


resource "aws_instance" "project-3" {
  count         = length(var.ec2_instance)
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  user_data     = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y terraform
  EOF
  # tags = {
  #   Name = var[count.index]
  # }
}
