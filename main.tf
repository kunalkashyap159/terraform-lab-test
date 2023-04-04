resource "aws_instance" "myVM1" {
  ami           = "ami-00b2c40b15619f518"
  instance_type = "t2.micro"
  tags = {
    Name = "Example-01"
  }
}

resource "aws_instance" "myVM2" {
  provider      = aws.west
  ami           = "ami-0b695b365bec60938"
  instance_type = "t2.micro"
  tags = {
    Name = "Example-02"
  }
}

resource "aws_s3_bucket" "myBucket" {
  bucket = "terraform-practest"
}

data "aws_vpc" "default_VPC" {
  default = true
}