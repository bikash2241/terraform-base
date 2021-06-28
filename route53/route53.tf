provider "aws" {
    region = var.region
}



resource "aws_route53_zone" "devts_hosted_zone" {
  name = var.hosted_zone
}



