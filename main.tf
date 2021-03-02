terraform {
  required_version = ">= 0.13"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "nextjs-cluster" {
  name = "waypoint-nextjs-cluster"
}
resource "aws_ecr_repository" "nextjs-image-repo" {
  name = "nextjs-image-repo"
}
