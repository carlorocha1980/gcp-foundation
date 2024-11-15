resource "google_compute_external_vpn_gateway" "ipnet_vpn_gw" {
  interface {
    ip_address = "172.16.0.0"
  }

  interface {
    id         = 1
    ip_address = "172.16.1.0"
  }

  name            = "ipnet-vpn-gw"
  project         = "dt-sandbox-host-proj"
  redundancy_type = "TWO_IPS_REDUNDANCY"
}
# terraform import google_compute_external_vpn_gateway.ipnet_vpn_gw projects/dt-sandbox-host-proj/global/externalVpnGateways/ipnet-vpn-gw
