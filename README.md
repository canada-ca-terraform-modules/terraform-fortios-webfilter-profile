<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_fortios"></a> [fortios](#requirement\_fortios) | >= 1.17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_fortios"></a> [fortios](#provider\_fortios) | >= 1.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [fortios_webfilter_profile.this](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/webfilter_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_webfilter_profiles"></a> [webfilter\_profiles](#input\_webfilter\_profiles) | Parameters for a FortiGate Webfilter profile. | map(object()) | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_webfilter_profile"></a> [webfilter\_profile](#output\_webfilter\_profile) | n/a |
<!-- END_TF_DOCS -->