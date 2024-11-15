resource "google_compute_disk" "gke_avantia_private_cluster_de_pool_3_476d1e57_0wx0" {
  guest_os_features {
    type = "GVNIC"
  }

  guest_os_features {
    type = "IDPF"
  }

  guest_os_features {
    type = "SECURE_BOOT"
  }

  guest_os_features {
    type = "SEV_CAPABLE"
  }

  guest_os_features {
    type = "SEV_LIVE_MIGRATABLE"
  }

  guest_os_features {
    type = "SEV_LIVE_MIGRATABLE_V2"
  }

  guest_os_features {
    type = "SEV_SNP_CAPABLE"
  }

  guest_os_features {
    type = "UEFI_COMPATIBLE"
  }

  guest_os_features {
    type = "VIRTIO_SCSI_MULTIQUEUE"
  }

  image = "https://www.googleapis.com/compute/beta/projects/gke-node-images/global/images/gke-1305-gke1443001-cos-113-18244-151-88-c-pre"

  labels = {
    goog-gke-cluster-id-base32 = "dr3zcl3ewneclhdllwhhbzrlkvwupaiyt77ey74uktkkrc5xzplq"
    goog-gke-node              = ""
    goog-gke-volume            = ""
    goog-k8s-cluster-location  = "us-central1"
    goog-k8s-cluster-name      = "avantia-private-cluster-dev"
    goog-k8s-node-pool-name    = "pool-3"
  }

  licenses                  = ["https://www.googleapis.com/compute/v1/projects/gke-node-images/global/licenses/gke-node", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos", "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/licenses/cos-pcid", "https://www.googleapis.com/compute/v1/projects/cos-cloud-shielded/global/licenses/shielded-cos"]
  name                      = "gke-avantia-private-cluster-de-pool-3-476d1e57-0wx0"
  physical_block_size_bytes = 4096
  project                   = "dt-sandbox-service-proj"
  size                      = 100
  type                      = "pd-balanced"
  zone                      = "us-central1-c"
}
# terraform import google_compute_disk.gke_avantia_private_cluster_de_pool_3_476d1e57_0wx0 projects/dt-sandbox-service-proj/zones/us-central1-c/disks/gke-avantia-private-cluster-de-pool-3-476d1e57-0wx0
