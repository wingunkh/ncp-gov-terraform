# terraform-ncp-gov

Terraform configuration for NAVER Cloud Platform's **Gov** site (`gov-ncloud.com`).

## Usage

```bash
cp terraform.tfvars.example terraform.tfvars # fill in credentials

terraform init
terraform plan
terraform apply
```

Tear down:

```bash
terraform destroy
```

## Notes on the Gov site

Examples written for the Public site do not transfer directly.

- **`site = "gov"`** — the provider defaults to `public`, which targets the
  commercial API endpoint.
- **`support_vpc = true`** — NCP runs Classic and VPC platforms side by side,
  and VPC resources are unavailable without this flag.
- **Verify the zone code.** Query the account instead:

  ```hcl
  data "ncloud_zones" "available" {}

  output "zones" {
    value = data.ncloud_zones.available.zones
  }
  ```

  A data-only configuration creates nothing, and doubles as a credential check.

## Security

`terraform.tfstate` stores resource attributes in plaintext and
`terraform.tfvars` holds API credentials — neither is committed. `.gitignore`
excludes `*.tfvars` while allowing `!*.tfvars.example`.