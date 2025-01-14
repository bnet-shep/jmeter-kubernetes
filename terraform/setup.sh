#!/bin/bash

terraform init
terraform apply
aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
