resource "google_compute_network" "infra_prd" {
  auto_create_subnetworks                   = false
  name                                      = "infra-prd"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
  project                                   = "dt-sandbox-host-proj"
  routing_mode                              = "GLOBAL"
}
# terraform import google_compute_network.infra_prd projects/dt-sandbox-host-proj/global/networks/infra-prd
