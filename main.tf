provider "aws" {
  region = "us-east-1"
}

# resource "aws_sns_topic" "cbl-toic-us-east" {
#   name = "cbl-topic-us-east"
# }

# resource "aws_sns_topic" "cbl-topic-u222" {
#   name = "cbl-topic-u222"
# }

module "ec2_with_mandatory_tagging" {
    source = "github.com/cloudtp/hello-terraform-module"

    # module variables
    Name = "${terraform.workspace}-sky-server"
    user_id = "SkyHuang"
    EndDate = "next-week"

 // Lab Task: Read the module code at https://github.com/samlindatw/hello-terraform-module
 // to set the required inut parameter
 // INSERT_ARGUMENT

}

module "vpc_example" {
    source = "terraform-aws-modules/vpc/aws"
    version = "3.0.0"
    
    name = "${terraform.workspace}-sky-vpc"
    cidr = "10.0.0.0/16"
    tags = {
        Owner = "Sky"
        Environment = "DEV"
    }

    vpc_tags = {
        Name = "${terraform.workspace}-sky-vpc"
    }
}

locals {
  bucket_name = "s3-bucket-${random_id.this.id}"
}

resource "random_id" "this" {
  byte_length = 8
}

module "s3_example" {
    source = "terraform-aws-modules/s3-bucket/aws"
    version = "2.2.0"

    bucket = local.bucket_name
}