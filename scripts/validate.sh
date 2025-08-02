#!/bin/bash

FILE="terraform/main.tf"

if [ -f "$FILE" ]; then
    echo "Terraform file found. Validating..."
    cd terraform
    terraform init -input=false
    terraform validate
else
    echo "No Terraform file found at $FILE"
    exit 1
fi
