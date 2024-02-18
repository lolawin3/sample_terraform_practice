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

provider "aws" {
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY_ID
    secret_key = var.AWS_SECRET_ACCESS_KEY
}
*/

resource "aws_db_instance" "default"{
    allocated_storage = 10
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t3.micro"
    username = "foo"
    password = "foobarbaz"
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true
}