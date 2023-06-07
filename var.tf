variable "ec2_instance" {
  type = list(object({
    name          = string
    instance_type = string
    ami           = string
    // Add any other attributes needed for an EC2 instance
  }))
  default = [
    {
      name          = "Prod"
      instance_type = "t2.micro"
      ami           = "ami-12345678"
    },
    {
      name          = "Test"
      instance_type = "t2.small"
      ami           = "ami-98765432"
    },
    // Define other EC2 instances here
  ]
}
