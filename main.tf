provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0d9355eec3e23c324" # ap-south-1
  instance_type = "t3.micro"
  tags = {
      Name = "TF-Instance"
  }
}
