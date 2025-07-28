provider "aws" {
  region = "us-east-2"
}

resource "aws_organizations_organizational_unit" "devops_ou" {
  name      = "DevOps"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

data "aws_organizations_organization" "org" {}
