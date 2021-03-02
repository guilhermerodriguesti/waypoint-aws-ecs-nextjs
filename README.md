<h1 align="center">Waypoint-aws-ecs-nextjs.</h1>

## Tecnologias

* Terraform

## 🚨 Pré-requisitos

* Terraform Instalado
* Access Key ID
* Secret Access Key

## 🔧 Instruções de Instalação
1. Configure AWS
```
$ aws configure
```
2.  Clonar este repositório:
```
git clone https://github.com/guilhermerodriguesti/waypoint-aws-ecs-nextjs.git

./run.sh
```

## Output Example
```
Applying...
aws_ecs_cluster.nextjs-cluster: Creating...
aws_ecr_repository.nextjs-image-repo: Creating...
aws_ecr_repository.nextjs-image-repo: Creation complete after 3s [id=nextjs-image-repo]
aws_ecs_cluster.nextjs-cluster: Still creating... [10s elapsed]
aws_ecs_cluster.nextjs-cluster: Creation complete after 13s [id=arn:aws:ecs:us-east-1:216952475463:cluster/waypoint-nextjs-cluster]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
----------------------------------------
Done!
----------------------------------------
Cleaning up plan file
----------------------------------------
✓ Configuration file appears valid
✓ Connection to Waypoint server was successful
✓ Project "app-nextjs" and all apps are registered with the server.
✓ Plugins loaded and configured successfully

Project initialized!

You may now call 'waypoint up' to deploy your project or
commands such as 'waypoint build' to perform steps individually.

» Building...
Creating new buildpack-based image using builder: heroku/buildpacks:18
✓ Creating pack client
✓ Building image
 │ [exporter] Reusing layer 'launcher'
 │ [exporter] Reusing layer 'config'
 │ [exporter] Adding label 'io.buildpacks.lifecycle.metadata'
 │ [exporter] Adding label 'io.buildpacks.build.metadata'
 │ [exporter] Adding label 'io.buildpacks.project.metadata'
 │ [exporter] *** Images (dec8e2061b42):
 │ [exporter]       index.docker.io/library/app-nextjs:latest
 │ [exporter] Reusing cache layer 'heroku/nodejs-engine:nodejs'
 │ [exporter] Reusing cache layer 'heroku/nodejs-engine:toolbox'
 │ [exporter] Reusing cache layer 'heroku/nodejs-npm:node_modules'
✓ Injecting entrypoint binary to image

Generated new Docker image: app-nextjs:latest
✓ All services available.
✓ Set ECR Repository name to 'nextjs-image-repo'
✓ Tagging Docker image: app-nextjs:latest => 216952475463.dkr.ecr.us-east-1.amazonaws.com/nextjs-image-repo:latest
✓ Pushing image...
 │ 5ab4f762de00: Pushed
 │ a69c380a8f73: Pushed
 │ bc3feea848e2: Pushed
 │ c4c245cbbce4: Pushed
 │ 25989dd35b17: Pushed
 │ 9f10818f1f96: Pushed
 │ 27502392e386: Pushed
 │ c95d2191d777: Pushed
 │ latest: digest: sha256:2f95b05e21d4ce53a462849a5a7b2f39cf9d7d2ad4e97369f8af266e3
 │ 754b397 size: 2831
Docker image pushed: 216952475463.dkr.ecr.us-east-1.amazonaws.com/nextjs-image-repo:latest

» Deploying...
✓ Created new ECS cluster: waypoint
✓ Created IAM role: ecr-app-nextjs
✓ Created CloudWatchLogs group to store logs in: waypoint-logs
✓ Using default subnets for Service networking
✓ Created new ALB Listener
✓ Configured security group: app-nextjs-inbound-internal
✓ Created ECS Service (app-nextjs-01EZSGF84CYCAH5PRHY39, cluster-name: waypoint)

» Releasing...

The deploy was successful! A Waypoint deployment URL is shown below. This
can be used internally to check your deployment and is not meant for external
traffic. You can manage this hostname using "waypoint hostname."

   Release URL: http://waypoint-ecs-app-nextjs-200868727.us-east-1.elb.amazonaws.com
Deployment URL: https://jolly-apparent-muskox--v4.waypoint.run
```
## 🔧 Test you alb_url on port 3000

http://ecs-nodejs-app-dev-load-balancer-1288290033.us-east-1.elb.amazonaws.com:3000
