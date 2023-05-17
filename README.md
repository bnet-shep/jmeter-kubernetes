## Summary

This repository contains a set of Terraform configurations and scripts to build a Kubernetes cluster in AWS EKS and then bring up a set of JMeter containers to run load tests.

The goal of this project is the following:
* Provision a temporary Kubernetes cluster in the BNetStable development environment
* Deploy JMeter infrastructure to run JMeter load tests on services in the BNetStable development environment
* Record JMeter test outputs for use in creating service delivery baselines

## Requirements
* Homebrew (if on OSX)
* Terraform 1.14 (`brew install terraform`)
* kubectl (`brew install kubectl`)
* awscli (`brew install awscli`)

## Quick Start

```bash
cd terraform
./setup.sh
./dockerimages.sh
./jmeter_cluster_create.sh
./dashboard.sh
./start_test.sh
```