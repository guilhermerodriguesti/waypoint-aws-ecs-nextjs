project = "app-nextjs"

app "app-nextjs" {
  labels = {
    "service" = "app-nextjs",
    "env"     = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "aws-ecr" {
        region     = "us-east-1"
        repository = "nextjs-image-repo"
        tag        = "latest"
      }
    }
  }

  deploy {
    use "aws-ecs" {
      region = "us-east-1"
      cluster = "waypoint-nextjs-cluster"
      subnets = [
        "subnet-011221418e60bda3a",
        "subnet-00499649dce767a39",
        "subnet-01bdbb94dd3a12e4a",
      ]
      memory = "512"
    }
  }
}