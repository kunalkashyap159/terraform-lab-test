resource "aws_instance" "myVM01" {
  ami           = "ami-00b2c40b15619f518"
  instance_type = "t2.micro"
  tags = {
    Name = "Example-01"
    PatchGroup= "Group1"
    Environment = "Dev"
    CreatedOn = "01-May-2023"
    CreatedBy = "Kunal K"
    OS = "N/A"
    Scope = "Regional"
  }
}

resource "aws_instance" "myVM02" {
  provider      = aws.west
  ami           = "ami-0b695b365bec60938"
  instance_type = "t2.micro"
  tags = {
    Name = "Example-02"
    PatchGroup= "Group1"
    Environment = "Dev"
    CreatedOn = "01-May-2023"
    CreatedBy = "Kunal K"
    OS = "N/A"
    Scope = "Regional"
  }
}

resource "aws_s3_bucket" "myBucket" {
  bucket = "terraform-practest"
  tags = {
    Name = "S3_buckets"
    PatchGroup= "N/A"
    Environment = "Dev"
    CreatedOn = "01-May-2023"
    CreatedBy = "Kunal K"
    OS = "N/A"
    Scope = "Regional"
  }
}

data "aws_vpc" "default_VPC" {
  default = true
}
