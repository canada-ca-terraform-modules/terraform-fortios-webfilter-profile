variable "webfilter_profiles" {
  description = "Parameters for a FortiGate Webfilter profile."

  type = map(object({
    extended_log                  = optional(string, "disable")
    https_replacemsg              = optional(string, "enable")
    feature_set                   = optional(string, "flow")
    inspection_mode               = optional(string)
    log_all_url                   = optional(string, "disable")
    post_action                   = optional(string, "normal")
    web_content_log               = optional(string, "enable")
    web_extended_all_action_log   = optional(string, "disable")
    web_filter_activex_log        = optional(string, "enable")
    web_filter_applet_log         = optional(string, "enable")
    web_filter_command_block_log  = optional(string, "enable")
    web_filter_cookie_log         = optional(string, "enable")
    web_filter_cookie_removal_log = optional(string, "enable")
    web_filter_js_log             = optional(string, "enable")
    web_filter_jscript_log        = optional(string, "enable")
    web_filter_referer_log        = optional(string, "enable")
    web_filter_unknown_log        = optional(string, "enable")
    web_filter_vbs_log            = optional(string, "enable")
    web_ftgd_err_log              = optional(string, "enable")
    web_ftgd_quota_usage          = optional(string, "enable")
    web_invalid_domain_log        = optional(string, "enable")
    web_url_log                   = optional(string, "enable")
    wisp                          = optional(string, "disable")
    wisp_algorithm                = optional(string, "auto-learning")
    youtube_channel_status        = optional(string)

    #ftgd_wf
    options              = optional(string, "ftgd-disable")
    exempt_quota         = optional(string)
    max_quota_timeout    = optional(string)
    ovrd                 = optional(string)
    rate_crl_urls        = optional(string, "enable")
    rate_css_urls        = optional(string, "enable")
    rate_image_urls      = optional(string)
    rate_javascript_urls = optional(string, "enable")
    # filters = map(object({
    #   name = 
    # }))

    #override
    ovrd_cookie       = optional(string, "deny")
    ovrd_dur          = optional(string, "15m")
    ovrd_dur_mode     = optional(string, "constant")
    ovrd_scope        = optional(string, "user")
    profile_attribute = optional(string, "Login-LAT-Service")
    profile_type      = optional(string, "list")

    #web
    blocklist           = optional(string)
    allowlist           = optional(string)
    blacklist           = optional(string)
    whitelist           = optional(string)
    bword_table         = optional(number)
    bword_threshold     = optional(number, 10)
    content_header_list = optional(number)
    log_search          = optional(string, "disable")
    urlfilter_table     = optional(number)
    youtube_restrict    = optional(string)
  }))
}
