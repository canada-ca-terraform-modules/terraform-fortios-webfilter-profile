resource "fortios_webfilter_profile" "this" {
  for_each = var.webfilter_profiles

  name = each.key

  extended_log                  = each.value.extended_log
  https_replacemsg              = each.value.https_replacemsg
  feature_set                   = each.value.feature_set
  inspection_mode               = each.value.inspection_mode != null ? each.value.inspection_mode : null
  log_all_url                   = each.value.log_all_url
  post_action                   = each.value.post_action
  web_content_log               = each.value.web_content_log
  web_extended_all_action_log   = each.value.web_extended_all_action_log
  web_filter_activex_log        = each.value.web_filter_activex_log
  web_filter_applet_log         = each.value.web_filter_applet_log
  web_filter_command_block_log  = each.value.web_filter_command_block_log
  web_filter_cookie_log         = each.value.web_filter_cookie_log
  web_filter_cookie_removal_log = each.value.web_filter_cookie_removal_log
  web_filter_js_log             = each.value.web_filter_js_log
  web_filter_jscript_log        = each.value.web_filter_jscript_log
  web_filter_referer_log        = each.value.web_filter_referer_log
  web_filter_unknown_log        = each.value.web_filter_unknown_log
  web_filter_vbs_log            = each.value.web_filter_vbs_log
  web_ftgd_err_log              = each.value.web_ftgd_err_log
  web_ftgd_quota_usage          = each.value.web_ftgd_quota_usage
  web_invalid_domain_log        = each.value.web_invalid_domain_log
  web_url_log                   = each.value.web_url_log
  wisp                          = each.value.wisp
  wisp_algorithm                = each.value.wisp_algorithm
  youtube_channel_status        = each.value.youtube_channel_status != null ? each.value.youtube_channel_status : null

  ftgd_wf {
    options              = each.value.options
    ovrd                 = each.value.ovrd != null ? each.value.ovrd : null
    exempt_quota         = each.value.exempt_quota != null ? each.value.exempt_quota : null
    max_quota_timeout    = each.value.max_quota_timeout != null ? each.value.max_quota_timeout : null
    rate_crl_urls        = each.value.rate_crl_urls
    rate_css_urls        = each.value.rate_css_urls
    rate_image_urls      = each.value.rate_image_urls != null ? each.value.rate_image_urls : null
    rate_javascript_urls = each.value.rate_javascript_urls

    # dynamic "filters" {
    #   for_each = each.value.filters

    #   content {

    #   }
    # }
  }

  override {
    ovrd_cookie       = each.value.ovrd_cookie
    ovrd_dur          = each.value.ovrd_dur
    ovrd_dur_mode     = each.value.ovrd_dur_mode
    ovrd_scope        = each.value.ovrd_scope
    profile_attribute = each.value.profile_attribute
    profile_type      = each.value.profile_type
  }

  web {
    blocklist           = each.value.blocklist != null ? each.value.blocklist : null
    allowlist           = each.value.allowlist != null ? each.value.allowlist : null
    blacklist           = each.value.blacklist != null ? each.value.blacklist : null
    whitelist           = each.value.whitelist != null ? each.value.whitelist : null
    bword_table         = each.value.bword_table != null ? each.value.bword_table : null
    bword_threshold     = each.value.bword_threshold
    content_header_list = each.value.content_header_list != null ? each.value.content_header_list : null
    log_search          = each.value.log_search
    urlfilter_table     = each.value.urlfilter_table != null ? each.value.urlfilter_table : null #URL filter table NUMBER. Requred if using web filter profilebased on static URL filter list.
    youtube_restrict    = each.value.youtube_restrict != null ? each.value.youtube_restrict : null
  }
}
