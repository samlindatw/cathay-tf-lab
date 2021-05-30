provider "aws" {
  region = "us-east-1"
}

resource "aws_sns_topic" "cbl-toic-us-east" {
  name = "cbl-topic-us-east"
}

resource "aws_sns_topic" "cbl-topic-u222" {
  name = "cbl-topic-u222"
}