provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins" {
  ami = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  tags = {
      "Name" = "Jenkins"
  }
}