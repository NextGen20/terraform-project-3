provider "aws" {
    region = "us-east-1"
}

module "ec2" {
  source = "./EC2-INSTANCES"
}

module "s3" {
  source = "./S3-BUCKETS"
}

module "iam" {
  source = "./IAM"
}

module "dynamodb" {
  source = "./DYNAMODB"
}


module "github" {
  source = "./GITHUB"

}

