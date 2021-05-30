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
    source = "github.com/samlindatw/cathay-tf-lab"
    Name = "CBL2-Server"
    user_id = "samlinda"
    EndDate = "next-week"

 // Lab Task: Read the module code at https://github.com/samlindatw/hello-terraform-module
 // to set the required inut parameter
 // INSERT_ARGUMENT

}