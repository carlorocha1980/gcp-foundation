# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri" {
  name          = var.subnet_cluster_name
  project       = var.host_project_id
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  purpose = "PRIVATE"

  ip_cidr_range = var.wecloud-primary-range
  region        = var.region_id
  
  stack_type       = "IPV4_ONLY"

  network = google_compute_network.vpc_network_avantia_prd.self_link
  
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.wecloud-services-range
  }
  
  secondary_ip_range {
    range_name    = "pods-range"
    ip_cidr_range = var.wecloud-pods-range
  }

  secondary_ip_range {
    range_name    = "weava-pods-range"
    ip_cidr_range = var.weava-pods-range
  }

  secondary_ip_range {
    range_name    = "wecloud-app-pods-range"
    ip_cidr_range = var.wecloud-app-pods-range
  }


  secondary_ip_range {
    range_name    = "wecloud-classifiers-pods-range"
    ip_cidr_range = var.wecloud-classifiers-pods-range
  }

  secondary_ip_range {
    range_name    = "wecloud-box-pods-range"
    ip_cidr_range = var.wecloud-box-pods-range
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_pri_gce" {
  name          = var.wecloud-pri-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pri-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_wecloud_pri_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_pri_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_pub_gce" {
  name          = var.wecloud-pub-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pub-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_wecloud_pub_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_pub_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_endpnts_e_svc_pri" {
  name          = var.wecloud-pri-endpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pri-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_endpnts_e_svc_pri" {
  value = google_compute_subnetwork.shared_vpc_endpnts_e_svc_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_endpnts_e_svc_pub" {
  name          = var.wecloud-pub-enpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pub-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_endpnts_e_svc_pub" {
  value = google_compute_subnetwork.shared_vpc_endpnts_e_svc_pub.self_link
}

resource "google_compute_subnetwork" "shared_vpc_functions_pri" {
  name          = var.wecloud-functions-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-functions-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_functions_pri" {
  value = google_compute_subnetwork.shared_vpc_functions_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_cloudsql_pri" {
  name          = var.wecloud-cloudsql-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-cloudsql-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_cloudsql_pri" {
  value = google_compute_subnetwork.shared_vpc_cloudsql_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_vpn_peer_srvcs_pri" {
  name          = var.wecloud-vpn-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-vpn-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_vpn_peer_srvcs_pri" {
  value = google_compute_subnetwork.shared_vpc_vpn_peer_srvcs_pri.self_link
}

# resource "google_compute_subnetwork" "shared_vpc_redis_pri" {
#   name          = var.wecloud-redis-name
#   project       = var.host_project_id
#   ip_cidr_range = var.wecloud-redis-cidr
#   region        = var.region_id
#   stack_type       = "IPV4_ONLY"
#   private_ip_google_access = true
#   network = google_compute_network.vpc_network_avantia_prd.id

#   depends_on = [google_compute_network.vpc_network_avantia_prd]
# }
# output "shared_vpc_redis_pri" {
#   value = google_compute_subnetwork.shared_vpc_redis_pri.self_link
# }
resource "google_compute_subnetwork" "shared_vpc_cluster_control_range_pri" {
  name          = var.subnet_control_name
  project       = var.host_project_id
  ip_cidr_range = var.subnet_control_range
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_cluster_control_range_pri" {
  value = google_compute_subnetwork.shared_vpc_cluster_control_range_pri.self_link
}