#!/bin/bash
set -e

workspace=$(terraform workspace show)
tfvars_file="../env.tfvars/${workspace}.tfvars"

if [ ! -f "$tfvars_file" ]; then
  echo "Missing tfvars file: $tfvars_file"
  exit 1
fi

terraform destroy  -var-file="$tfvars_file"
