# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_stg_weava_pri" {
  name          = var.wecloud-stg-node-pools-name
  project       = var.host_project_id
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  purpose = "PRIVATE"

  ip_cidr_range = var.wecloud-stg-node-pools-range
  region        = var.region_id
  
  stack_type       = "IPV4_ONLY"

  network = google_compute_network.vpc_network_avantia_dev.self_link
  
  secondary_ip_range {
    range_name    = var.weava-stg-default-services-name
    ip_cidr_range = var.weava-stg-default-services-range
  }
  
  secondary_ip_range {
    range_name    = var.wecloud-stg-default-pods-name
    ip_cidr_range = var.wecloud-stg-default-pods-range
  }

  secondary_ip_range {
    range_name    = var.wecloud-stg-app-name
    ip_cidr_range = var.wecloud-stg-app-range
  }

  secondary_ip_range {
    range_name    = var.wecloud-stg-hoint-pods-name
    ip_cidr_range = var.wecloud-stg-hoint-pods-range
  }


  secondary_ip_range {
    range_name    = var.wecloud-stg-box-pods-name
    ip_cidr_range = var.wecloud-stg-box-pods-range
  }

  secondary_ip_range {
    range_name    = var.wecloud-stg-pods-name
    ip_cidr_range = var.wecloud-stg-pods-range
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_stg_weava_pri" {
  value = google_compute_subnetwork.subnet_avantia_stg_weava_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_stg_pri_gce" {
  name          = var.wecloud-stg-pri-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pri-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_wecloud_stg_pri_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_stg_pri_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_stg_pub_gce" {
  name          = var.wecloud-stg-pub-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pub-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_wecloud_stg_pub_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_stg_pub_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_endpnts_e_svc_pri" {
  name          = var.wecloud-stg-pri-endpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pri-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_endpnts_e_svc_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_endpnts_e_svc_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_endpnts_e_svc_pub" {
  name          = var.wecloud-stg-pub-enpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pub-enpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_endpnts_e_svc_pub" {
  value = google_compute_subnetwork.shared_vpc_stg_endpnts_e_svc_pub.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_functions_pri" {
  name          = var.wecloud-stg-functions-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-functions-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_functions_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_functions_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_cloudsql_pri" {
  name          = var.wecloud-stg-cloudsql-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-cloudsql-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_cloudsql_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_cloudsql_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_vpn_peer_srvcs_pri" {
  name          = var.wecloud-stg-vpn-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-vpn-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_vpn_peer_srvcs_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_vpn_peer_srvcs_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_cluster_control_range_pri" {
  name          = var.subnet_stg_control_name
  project       = var.host_project_id
  ip_cidr_range = var.subnet_stg_control_range
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_cluster_control_range_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_cluster_control_range_pri.self_link
}