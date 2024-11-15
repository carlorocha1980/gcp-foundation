resource "google_compute_security_policy" "catflix_sec_policy" {
  adaptive_protection_config {
    layer7_ddos_defense_config {
      enable = true
    }
  }

  advanced_options_config {
    json_parsing = "STANDARD"
  }

  name    = "catflix-sec-policy"
  project = "dt-sandbox-host-proj"

  rule {
    action      = "deny(403)"
    description = "Default rule, higher priority overrides it"

    match {
      config {
        src_ip_ranges = ["*"]
      }

      versioned_expr = "SRC_IPS_V1"
    }

    priority = 2147483647
  }

  type = "CLOUD_ARMOR"
}
# terraform import google_compute_security_policy.catflix_sec_policy projects/dt-sandbox-host-proj/global/securityPolicies/catflix-sec-policy
