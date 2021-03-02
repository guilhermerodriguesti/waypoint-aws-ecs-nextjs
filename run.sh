#!/bin/sh
export AWS_ACCESS_KEY_ID="AKIAYZ2YHYSTYJU7Q7XZ"
export AWS_SECRET_ACCESS_KEY="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"
export AWS_DEFAULT_REGION="us-east-1"
ENV="dev"

if [ "$1" = "prod" ]; then
  ENV="prod"
fi

echo "----------------------------------------"
echo "Formatting terraform files"
terraform fmt
echo "----------------------------------------"
terraform init
echo "----------------------------------------"
echo "Validating terraform files"
terraform validate
echo "----------------------------------------"
echo "Planning..."
terraform plan
echo "----------------------------------------"
echo "Applying..."
terraform apply -auto-approve
echo "----------------------------------------"
echo "Done!"
echo "----------------------------------------"
echo "Cleaning up plan file"
rm -rf plan.tfout
echo "----------------------------------------"



waypoint init


waypoint up
