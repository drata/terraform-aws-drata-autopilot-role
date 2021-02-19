# terraform-aws-drata-autopilot-role

Terraform module to create the Drata Autopilot Role in AWS

## Usage

**Note** the example below uses `ref=master`. It is recommended to pin this module to a specific version to avoid breaking changes.

```
module "drata_autopilot_role" {
  source              = "git::https://github.com/drata/terraform-aws-drata-autopilot-role.git?ref=master"
  role_sts_externalid = "YOUR_EXTERNAL_ID"
}

# this will output the Role ARN
output "drata_autopilot_role" {
  value = module.drata_autopilot_role.role_arn
}
```

Replace `YOUR_EXTERNAL_ID` with the External ID in the AWS connection panel in Drata

#### The first time you run this, it needs to be initialized

```
$ terraform init
```

#### Apply the changes

```
$ terraform apply
```

After you apply this terraform, it will output the Role ARN that you can paste into the AWS connection panel in Drata to initiate the connection.
