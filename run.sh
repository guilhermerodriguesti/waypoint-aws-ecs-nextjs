#!/bin/sh

ENV="dev"

if [ "$1" = "prod" ]; then
  ENV="prod"
fi

rm -rf .terraform*
rm -rf terraform.tfstate
rm -rf terraform.tfstate.backup

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
#terraform destroy -auto-approve
echo "----------------------------------------"
echo "Done!"
echo "----------------------------------------"
echo "Cleaning up plan file"
rm -rf plan.tfout
echo "----------------------------------------"

rm -rf .waypoint*
waypoint init
waypoint up


#waypoint destroy