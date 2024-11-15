# ######################################################
# # Create a Private subnet in the Template VPC Network #
# ######################################################
# # # Create a google vpc subnet
# resource "google_compute_subnetwork" "subnet_services" {
#     name          = "${var.service_project_id}-${var.service_vpc_name}-${var.env}"
#     project       = local.projects.host_project.name
#     ip_cidr_range = "${var.subnet_cidr_service_range}"
#     network       = google_compute_network.vpc_shared_network.self_link
#     region        = "${var.region_id}"

#   depends_on = [ google_compute_network.vpc_shared_network ]
# }
# output "subnet_aiqfome_service" {
#   value = google_compute_subnetwork.subnet_services.self_link
# }
# # # Create a google vpc subnet
# resource "google_compute_subnetwork" "subnet_application" {
#     name          = "${var.service_project_id}-${var.application_vpc_name}-${var.env}"
#     project       = local.projects.host_project.name
#     ip_cidr_range = "${var.subnet_cidr_application_range}"
#     network       = google_compute_network.vpc_shared_network.self_link
#     region        = "${var.region_id}"

#   depends_on = [ google_compute_network.vpc_shared_network ]
# }
# output "subnet_aiqfome_application" {
#   value = google_compute_subnetwork.subnet_application.self_link
# }

# ###################################
# # Create a VPC Subnetwork for GKE #
# ###################################
# resource "google_compute_subnetwork" "gke_subnet_services" {
#   name = "${var.service_project_id}-${var.subnet_cluster_name}-${var.env}"
#   project = local.projects.host_project.name
#   private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
#   purpose = "PRIVATE"

#   ip_cidr_range = var.subnet_cidr_cluster_range_primary
#   region        = var.region_id

#   stack_type       = "IPV4_ONLY"

#   network       = google_compute_network.vpc_shared_network.self_link
#   secondary_ip_range {
#     range_name    = "services-range"
#     ip_cidr_range = var.subnet_cidr_cluster_range_secondary_services
#   }

#   secondary_ip_range {
#     range_name    = "pod-range"
#     ip_cidr_range = var.subnet_cidr_cluster_range_secondary_pods
#   }
# }
# output "gke_subnet_services" {
#   value = google_compute_subnetwork.gke_subnet_services.self_link
# }
# output "gke_subnet_services_id" {
#   value = google_compute_subnetwork.gke_subnet_services.id
# }
# output "gke_vpc_subnet_service_range" {
#   value = google_compute_subnetwork.gke_subnet_services.secondary_ip_range[0].range_name
# }
# output "gke_vpc_subnet_pod_range" {
#   value = google_compute_subnetwork.gke_subnet_services.secondary_ip_range[1].range_name
# }

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri" {
  name          = var.subnet_cluster_name
  project       = var.host_project_id
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  purpose = "PRIVATE"

  ip_cidr_range = var.wecloud-primary-range
  region        = var.region_id
  
  stack_type       = "IPV4_ONLY"

  network = google_compute_network.vpc_network_avantia_dev.self_link
  
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