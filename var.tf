variable "ec2_instance" {
  type    = list(string)
  default = ["Prod", "Test", "Slave", "second-Prod"]
}

variable "choose_type" {
  type    = list(string)
  default = ["t2.micro", "t2.small", "t2.large"]
}
