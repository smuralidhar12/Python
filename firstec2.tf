provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAWNCQTFAIGMQJ547A"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-0e5b6b6a9f3db6db8"
   instance_type = "t2.micro"
}

resource "aws_s3_bucket" "buckmys3" {
  bucket = "bucket-my-s3"
}

resource "aws_eip" "lb" {
  instance = aws_instance.myec2.id
  vpc      = true
}
