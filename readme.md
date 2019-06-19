# Cornerstone DevOps tech test

## Overview

Create the resources to run a basic 3-tier application.

This task should be completed using Terraform 0.11.x (0.12.x is acceptable, but not currently used at Cornerstone). You can download Terraform from [their website](https://www.terraform.io/downloads.html), alternatively if you are using a Mac, you can use [homebrew](https://brew.sh/):

```
brew install terraform@0.11
```

You can find resource documentation on the [Terraform site](https://www.terraform.io/docs/providers/aws/index.html).

You may find some helpful functions in the [Interpolation Syntax](https://www.terraform.io/docs/configuration-0-11/interpolation.html) docs.

The provider setup is provided in `main.tf`. If you wish to add additional files to make your resources more structured, please feel free to do so.

This test should not take more than 4 hours to complete.

## Requirements

When you first start writing new code in Terraform, you will typically need to perform a `terraform init`, to pull down the provider.

You may also wish to check what your configuration will generate, you can do this with `terraform plan`.

_One of the requirements will be to set up a load balancer, which typically would require an SSL certificate, but this is out of the scope of this exercise, so only HTTP resources will be required._

- A VPC with the CIDR: `123.0.0.0/16`

- 2 Public Subnets

- 2 Private Subnets

- NAT Gateways

- Security Groups

- Application Load Balancer
  - HTTP Listener
  - Target Groups

- Auto Scaling Groups
  - Frontend
  - Backend

- Aurora MySQL Database

- S3 Bucket

- IAM Role
  - Allow the EC2 instances to read/write to above S3 Bucket

### Bonus Points

- Creating reusable code with [Modules](https://www.terraform.io/docs/modules/index.html) to simplify the creation of repeated/multiple resources
- Usage of the `fmt` command to produce well formatted code
