# tf-mysql-rds
Creation of a simple MySQL RDS instance
### Runtimes
This repository makes use of standard abbreviations for 'runtimes'.

    dev     = development
    sit     = system in tests
    prd     = production

### .tfvars Files
This repo makes use of separate `.tfvars` files for each runtime. This approach keeps the variables out of the TF workspaces and keeps them under source control and change policies. 

The `charter.env` variable must be set accordingly in each of the `.tfvars` files.

### TF workspace
This is a `runtime` level repository; 3 TF workspaces for applying to each individual `runtime`. 

    dev     = -var-file=./var/dev.tfvars
    sit     = -var-file=./var/sit.tfvars
    prd     = -var-file=./var/prd.tfvars

_THIS IS VERY IMPORTANT TO SET CORRECTLY IN YOUR WORKSPACES. IF YOU DO NOT HAVE THE CORRECT `.tfvars` FILE CONFIGURED, YOU MAY PLAN AND APPLY TO THE WRONG ACCOUNT._

### Access Keys & Assume Role
Each `.tfvars` file contains an `assume_role_arn` attribute (optional) that allows TF to assume a role in the correct account. 

### pre-commit
This repository makes use of pre-commit. Follow these instructions for installing the latest version of pre-commit: https://github.com/antonbabenko/pre-commit-terraform#how-to-install

You can test pre-commit conditions by running 
> `pre-commit run` or `pre-commit run -a` (for all)


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | 0.12.29 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws | n/a | <pre>map(object(<br>    {<br>      region          = string,<br>      assume_role_arn = string<br>    }<br>  ))</pre> | n/a | yes |
| charter | n/a | <pre>object(<br>    {<br>      org = string<br>      env = string<br>    }<br>  )</pre> | n/a | yes |
| dbname | Name for the DB | `string` | n/a | yes |
| engine\_version | MySQL database engine version | `string` | `"8.0.17"` | no |
| instance\_class | Instance type to use | `string` | `"db.m5.large"` | no |
| storage | Storage in gibibytes | `string` | `"50"` | no |
| storage\_type | Standard, SSD provisioned or IOPS SSD | `string` | `"gp2"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

