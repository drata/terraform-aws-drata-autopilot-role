# terraform-aws-drata-autopilot-role

Terraform module to create the Drata Autopilot Role in AWS

## Usage

**Note** the example below uses `ref=main`. It is recommended to pin this module to a specific tag version (i.e. `ref=1.0.0`) to avoid breaking changes. See the [releases page](https://github.com/drata/terraform-aws-drata-autopilot-role/releases) for a list of published versions.

```
module "drata_autopilot_role" {
  source              = "git::https://github.com/drata/terraform-aws-drata-autopilot-role.git?ref=main"
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
