resource "google_compute_security_policy" "security_policy_for_backend_service_catflix_lb_flamel_backend" {
  description = "Default security policy for: catflix-lb-flamel-backend"
  name        = "security-policy-for-backend-service-catflix-lb-flamel-backend"
  project     = "dt-sandbox-host-proj"

  rule {
    action = "allow"

    match {
      config {
        src_ip_ranges = ["*"]
      }

      versioned_expr = "SRC_IPS_V1"
    }

    priority = 2147483647
  }

  rule {
    action      = "throttle"
    description = "Default rate limiting rule"

    match {
      config {
        src_ip_ranges = ["*"]
      }

      versioned_expr = "SRC_IPS_V1"
    }

    priority = 2147483646

    rate_limit_options {
      conform_action = "allow"
      enforce_on_key = "IP"
      exceed_action  = "deny(403)"

      rate_limit_threshold {
        count        = 500
        interval_sec = 60
      }
    }
  }

  type = "CLOUD_ARMOR"
}
# terraform import google_compute_security_policy.security_policy_for_backend_service_catflix_lb_flamel_backend projects/dt-sandbox-host-proj/global/securityPolicies/security-policy-for-backend-service-catflix-lb-flamel-backend
