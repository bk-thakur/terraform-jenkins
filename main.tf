provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0f5ee92e2d63afc18"   # Amazon Linux 2 (Mumbai) # ap-south-1
  instance_type = "t3.micro"
  tags = {
      Name = "TF-Instance"
  }
}
