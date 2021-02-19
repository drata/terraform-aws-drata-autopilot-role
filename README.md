# terraform-aws-drata-autopilot-role

Terraform module to create the Drata Autopilot Role in AWS

## Usage

**Note** the example below uses `ref=master`. It is recommended to pin this module to a specific version to avoid breaking changes.

```
module "drata_autopilot_role" {
  source              = "git::https://github.com/drata/terraform-aws-drata-autopilot-role.git?ref=master"
  role_sts_externalid = "YOUR_EXTERNAL_ID"

  # optional
  role_name = "DrataReadOnly" # defaults to "DrataAutopilotRole"
  role_path = "/external/"     # defaults to "/security/"
}
```

Replace `YOUR_EXTERNAL_ID` with the External ID in the AWS connection panel in Drata

After you apply this terraform, it will output the Role ARN that you can paste into the AWS connection panel in Drata to initiate the connection.
