# Define an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
}

# Define an EC2 instance with userdata that references the S3 bucket URL
resource "aws_instance" "example_instance" {
  ami           = "ami-12345678"  # Replace with a valid AMI ID
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              # Download content from S3 bucket
              aws s3 cp s3://${aws_s3_bucket.example_bucket.bucket}/path/to/script.sh /path/to/local/script.sh
              chmod +x /path/to/local/script.sh
              /path/to/local/script.sh
              EOF

  # Reference the S3 bucket's ARN as a dependency
  depends_on = [aws_s3_bucket.example_bucket]
}