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

After you apply this terraform, it will output the Role ARN that you can paste into the AWS connection panel in Drata to initiate the connection.

## Setup

1. Add the code above to your terraform code
2. Replace `main` in `ref=main` with the latest version from the [releases page](https://github.com/drata/terraform-aws-drata-autopilot-role/releases)
3. In your browser, open https://app.drata.com/account-settings/connections/aws
4. Copy the `Drata External ID` from step 8 and replace `YOUR_EXTERNAL_ID` in the module with the ID you copied
   * Do NOT close the drawer or click the Save button at this point
6. Back in your teminal, run `terraform init` to download/update the module
7. Run `terraform apply` and **IMPORTANT** review the plan output before typing `yes`
8. When the terraform is applied, it will output the Role ARN, copy the ARN
9. Paste the Role ARN into the field under step 20 in the AWS Connections drawer in Drata
10. Click the `Save & Test Connection` button
