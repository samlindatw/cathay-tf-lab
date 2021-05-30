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