/*
terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.16"
        }
    }
    
    required_version = ">= 1.2.0"
}
*/

provider "aws" {
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY_ID
    secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "ec2" {
    ami = "ami-0e731c8a588258d0d"
    instance_type = "t2.micro"

    tags = {
    Name = "TerraformSampleAppServerInstance"
    }
}

variable "AWS_SECRET_ACCESS_KEY" {
    default = ""
}

variable "AWS_ACCESS_KEY_ID" {
    default = ""
}