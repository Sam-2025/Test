provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "sample" {
  ami = "ami-0d682f26195e9ec0f"
  subnet_id = "subnet-07282fa9802d2992e"
  key_name = "samkey"
  instance_type = "t3.micro"
  tags = {
    Name = "pol-SCM" 
  }
}
