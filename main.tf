provider "aws" {
    region = "us-east-1"
}

module "ec2" {
  source = "./EC2-INSTANCES"
}
# module "agents" {
#   source = "./modules/agents-module"
# }
module "s3" {
  source = "./S3-BUCKETS"
}

module "iam" {
  source = "./modules/iam-module"
}

module "dynamodb" {
  source = "./modules/dynamodb-module"
}


module "github" {
  source = "./GITHUB"

}