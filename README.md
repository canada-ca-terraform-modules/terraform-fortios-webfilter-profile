<!-- BEGIN_TF_DOCS -->
## Usage
```hcl
module "wf_profiles_internal" {
  source = "https://github.com/canada-ca-terraform-modules/terraform-fortios-webfilter-profile"
  providers = {
    fortios = fortios.my_alias
  }
#This example uses a web filter profile exclusively with a static url filter table. 
#FortiGuard category based filtering must be disabled for this to work.  

  webfilter_profiles = {
    static_webfilter_1 = {
      urlfilter_table = 20 #Existing URL filter table number. May be defined in terraform.
    },
    static_webfilter_2 = {
      urlfilter_table = 21
    }
  }
}
```
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
| <a name="input_webfilter_profiles"></a> [webfilter\_profiles](#input\_webfilter\_profiles) | Parameters for a FortiGate Webfilter profile. | `map(object())` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_webfilter_profile"></a> [webfilter\_profile](#output\_webfilter\_profile) | n/a |
<!-- END_TF_DOCS -->