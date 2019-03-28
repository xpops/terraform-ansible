variable "instance_type" {
  description = "Instance type of the EC2 instance to launch"
  type = "string"
  default = "t2.micro"
}

variable "instance_ami" {
  description = "AMI id of the EC2 instance to launch"
  type = "string"
}
