# This file contains the variables used by the terraform scripts
# Global variables
# This file is used by the terraform scripts to create the infrastructure
############################################
# Credentials file for the service account #
############################################
org_id = "13995541191"
###########################################
# Declarate information to Project Create #
###########################################
billing_account = "01372B-DAAE88-F20731"
shared_folder_id = "value"
environment_folder_id = "value"
project_folder_id = "value"

########################
# Define Enviroment ID #
########################
env = "dev"
prd_env = "prd"

#######################################################
# Set the Projects IDs for the different environments #
#######################################################
# Shared Projects
host_project_id = "dt-sandbox-host-proj"
# Service Projects
service_project_id = "dt-sandbox-service-proj"
###########################
# Define the machine type #
###########################
machine_type = "e2-micro"
# machine_type_medium = "e2-medium"
# machine_type_large = "e2-standard-2"

########################
# Define default image #
########################
linux_image = "cos-cloud/cos-stable"

################################################
# Define the region and zone for the resources #
################################################
region_id = "us-central1"
zone_01_id = "us-central1-a"
zone_02_id = "us-central1-b"
zone_03_id = "us-central1-f"

########################################
# Define the network and subnets names #
########################################
# Link to IP distribuition list https://docs.google.com/spreadsheets/d/1Jtw4-wJaHHsyIf31eghvgcwIYUr_HuJy/edit?usp=sharing&ouid=100727001565538824661&rtpof=true&sd=true
################################################################################
#######################
# Cluster VPC Network #
#######################
service_vpc_name = "avantia-infr-prod-gke-wecloud-cluster-pri-us-ce1-a-1"
################################################################################
# Cluster subnets
subnet_cluster_name = "avantia-infr-prod-gke-wecloud-cluster-pri-us-ce1-a-1"
subnet_cidr_environment = "10.242.0.0/17" # Only to Control and Firewall Rules
################################################################################
# Cluster subnets CIDR
# Control CIDR Range
subnet_control_name = "avantia-infr-prod-gke-wecloud-cluster-cp-pri-us-ce1-a-1"
subnet_control_range = "10.242.83.0/28"
# Primary CIDR
wecloud-primary-range = "10.242.0.0/22"
# Secondary CIDR
wecloud-pods-name = "avantia-infr-prod-gke-wecloud-defaultpod-pri-us-ce1-1"
wecloud-pods-range = "10.242.4.0/22"
wecloud-services-name = "avantia-infr-prod-gke-wecloud-defaultservice-pri-us-ce1-1"
wecloud-services-range = "10.242.8.0/21"
weava-pods-name  = "avantia-infr-prod-gke-wecloud-weavaintpod-pri-us-ce1-1"
weava-pods-range = "10.242.16.0/21"
wecloud-app-pods-name  = "avantia-infr-prod-gke-wecloud-wecloudpod-pri-us-ce1-1"
wecloud-app-pods-range = "10.242.24.0/22"
wecloud-classifiers-pods-name  = "avantia-infr-prod-gke-wecloud-classfierspod-pri-us-ce1-1"
wecloud-classifiers-pods-range = "10.242.28.0/22"
wecloud-box-pods-name  = "avantia-infr-prod-gke-wecloud-boxpod-pri-us-ce1-1"
wecloud-box-pods-range = "10.242.32.0/19"
############################################################################

###################
# GCE VPC Network #
###################
# Primary GCE Network
wecloud-pri-gce-name = "avantia-infr-prod-gce-wecloud-pri-us-ce1-1"
wecloud-pri-gce-cidr = "10.242.64.0/23"
# Public GCE Network
wecloud-pub-gce-name = "avantia-infr-prod-gce-wecloud-pub-us-ce1-1"
wecloud-pub-gce-cidr = "10.242.66.0/23"

#######################
# Endpont VPC Network #
#######################
# Primary Endpoint Network
wecloud-pri-endpoint-name = "avantia-infr-prod-endpntsrvcs-wecloud-pri-us-ce1-1"
wecloud-pri-endpoint-cidr = "10.242.68.0/23"
# Public Endpoint Network
wecloud-pub-enpoint-name = "avantia-infr-prod-endpntsrvcs-wecloud-pub-us-ce1-1"
wecloud-pub-endpoint-cidr = "10.242.70.0/23"

#########################
# Functions VPC Network #
#########################
wecloud-functions-name = "avantia-infr-prod-functions-wecloud-pri-us-ce1-1"
wecloud-functions-cidr = "10.242.72.0/21"

########################
# CloudSQL VPC Network #
########################
wecloud-cloudsql-name = "avantia-infr-prod-sql-wecloud-pri-us-ce1-1"
wecloud-cloudsql-cidr = "10.242.80.0/24"

#########################
# VPN Peers VPC Network #
#########################
wecloud-vpn-name = "avantia-infr-prod-vpn-wecloud-pri-us-ce1-1"
wecloud-vpn-cidr = "10.242.81.0/24"

#####################
# Redis VPC Network #
#####################
# wecloud-redis-name = "avantia-infr-prod-redis-wecloud-pri-us-ce1-1"
# wecloud-redis-cidr = "10.242.82.0/24"

###################
# DEV VPC Network #
###################
########################################
# Define the network and subnets names #
########################################
# Link to IP distribuition list https://docs.google.com/spreadsheets/d/1Jtw4-wJaHHsyIf31eghvgcwIYUr_HuJy/edit?usp=sharing&ouid=100727001565538824661&rtpof=true&sd=true
################################################################################
#######################
# Cluster VPC Network #
#######################
service_dev_vpc_name = "avantia-infr-dev-gke-wecloud-defaultnodepod-pri-us-ce1-1"
################################################################################
# Cluster subnets
subnet_dev_cluster_name = "avantia-infr-dev-gke-wecloud-defaultnodepod-pri-us-ce1-1"
subnet_dev_cidr_environment = "10.243.0.0/18" # Only to Control and Firewall Rules
################################################################################
# Cluster subnets CIDR
# Control CIDR Range
subnet_dev_control_name = "avantia-infr-dev-gke-wecloud-controlplane-pri-us-ce1-1"
subnet_dev_control_range = "10.243.40.0/28"
# Primary CIDR
wecloud-dev-node-pools-name  = "avantia-infr-dev-gke-wecloud-defaultnodepod-pri-us-ce1-1"
wecloud-dev-node-pools-range = "10.243.0.0/23"
# Secondary CIDR
wecloud-dev-default-pods-name = "avantia-infr-dev-gke-wecloud-defaultpod-pri-us-ce1-1"
wecloud-dev-default-pods-range = "10.243.2.0/24"

wecloud-dev-app-name = "avantia-infr-dev-gke-wecloud-app-pri-us-ce1-1"
wecloud-dev-app-range = "10.242.3.0/24"

weava-dev-default-services-name  = "avantia-infr-dev-gke-wecloud-defaultservice-pri-us-ce1-1"
weava-dev-default-services-range = "10.243.4.0/22"

wecloud-dev-hoint-pods-name  = "avantia-infr-dev-gke-wecloud-weavahoint-pri-us-ce1-1"
wecloud-dev-hoint-pods-range = "10.243.8.0/23"

wecloud-dev-box-pods-name  = "avantia-infr-dev-gke-wecloud-box-pri-us-ce1-1"
wecloud-dev-box-pods-range = "10.243.10.0/23"

wecloud-dev-pods-name  = "avantia-infr-dev-gke-nextvision-boxpod-pri-us-ce1-1"
wecloud-dev-pods-range = "10.243.13.0/24"
############################################################################

###################
# GCE VPC Network #
###################
# Primary GCE Network
wecloud-dev-pri-gce-name = "avantia-infr-dev-gce-wecloud-pri-us-ce1-1"
wecloud-dev-pri-gce-cidr = "10.243.14.0/24"
# Public GCE Network
wecloud-dev-pub-gce-name = "avantia-infr-dev-gce-wecloud-pub-us-ce1-1"
wecloud-dev-pub-gce-cidr = "10.243.15.0/24"

#######################
# Endpont VPC Network #
#######################
# Primary Endpoint Network
wecloud-dev-pri-endpoint-name = "avantia-infr-dev-endpntsrvcs-pri-us-ce1-1"
wecloud-dev-pri-endpoint-cidr = "10.243.16.0/24"
# Public Endpoint Network
wecloud-dev-pub-enpoint-name = "avantia-infr-dev-endpntsrvcs-pub-us-ce1-1"
wecloud-dev-pub-enpoint-cidr = "10.243.17.0/24"

#########################
# Functions VPC Network #
#########################
wecloud-dev-functions-name = "avantia-infr-dev-functions-pri-us-ce1-1"
wecloud-dev-functions-cidr = "10.243.18.0/23"

########################
# CloudSQL VPC Network #
########################
wecloud-dev-cloudsql-name = "avantia-infr-dev-cloudsql-pri-us-ce1-1"
wecloud-dev-cloudsql-cidr = "10.243.20.0/24"

#########################
# VPN Peers VPC Network #
#########################
wecloud-dev-vpn-name = "avantia-infr-dev-vpnpeersrvcs-pub-us-ce1-1"
wecloud-dev-vpn-cidr = "10.243.21.0/24"