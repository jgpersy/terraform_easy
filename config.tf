
variable "region" {
  default = "eu-west-1"
}


variable "ubuntu_instance" {
  type = map

  default = {
    ami             = "ami-06fd8a495a537da8b"
    instance_type   = "t3.micro"
  }
 
}