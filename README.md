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
| <a name="input_webfilter_profiles"></a> [webfilter\_profiles](#input\_webfilter\_profiles) | Parameters for a FortiGate Webfilter profile. | <pre>map(object({<br/>    extended_log                  = optional(string, "disable")<br/>    https_replacemsg              = optional(string, "enable")<br/>    feature_set                   = optional(string, "flow")<br/>    inspection_mode               = optional(string)<br/>    log_all_url                   = optional(string, "disable")<br/>    post_action                   = optional(string, "normal")<br/>    web_content_log               = optional(string, "enable")<br/>    web_extended_all_action_log   = optional(string, "disable")<br/>    web_filter_activex_log        = optional(string, "enable")<br/>    web_filter_applet_log         = optional(string, "enable")<br/>    web_filter_command_block_log  = optional(string, "enable")<br/>    web_filter_cookie_log         = optional(string, "enable")<br/>    web_filter_cookie_removal_log = optional(string, "enable")<br/>    web_filter_js_log             = optional(string, "enable")<br/>    web_filter_jscript_log        = optional(string, "enable")<br/>    web_filter_referer_log        = optional(string, "enable")<br/>    web_filter_unknown_log        = optional(string, "enable")<br/>    web_filter_vbs_log            = optional(string, "enable")<br/>    web_ftgd_err_log              = optional(string, "enable")<br/>    web_ftgd_quota_usage          = optional(string, "enable")<br/>    web_invalid_domain_log        = optional(string, "enable")<br/>    web_url_log                   = optional(string, "enable")<br/>    wisp                          = optional(string, "disable")<br/>    wisp_algorithm                = optional(string, "auto-learning")<br/>    youtube_channel_status        = optional(string)<br/><br/>    #ftgd_wf<br/>    options              = optional(string, "ftgd-disable")<br/>    exempt_quota         = optional(string)<br/>    max_quota_timeout    = optional(string)<br/>    ovrd                 = optional(string)<br/>    rate_crl_urls        = optional(string, "enable")<br/>    rate_css_urls        = optional(string, "enable")<br/>    rate_image_urls      = optional(string)<br/>    rate_javascript_urls = optional(string, "enable")<br/>    # filters = map(object({<br/>    #   name = <br/>    # }))<br/><br/>    #override<br/>    ovrd_cookie       = optional(string, "deny")<br/>    ovrd_dur          = optional(string, "15m")<br/>    ovrd_dur_mode     = optional(string, "constant")<br/>    ovrd_scope        = optional(string, "user")<br/>    profile_attribute = optional(string, "Login-LAT-Service")<br/>    profile_type      = optional(string, "list")<br/><br/>    #web<br/>    blocklist           = optional(string)<br/>    allowlist           = optional(string)<br/>    blacklist           = optional(string)<br/>    whitelist           = optional(string)<br/>    bword_table         = optional(number)<br/>    bword_threshold     = optional(number, 10)<br/>    content_header_list = optional(number)<br/>    log_search          = optional(string, "disable")<br/>    urlfilter_table     = optional(number)<br/>    youtube_restrict    = optional(string)<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_webfilter_profile"></a> [webfilter\_profile](#output\_webfilter\_profile) | n/a |
<!-- END_TF_DOCS -->