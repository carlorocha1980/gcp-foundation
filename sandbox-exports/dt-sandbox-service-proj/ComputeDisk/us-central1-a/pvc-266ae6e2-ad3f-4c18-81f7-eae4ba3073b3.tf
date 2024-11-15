resource "google_compute_disk" "pvc_266ae6e2_ad3f_4c18_81f7_eae4ba3073b3" {
  description = "{\"kubernetes.io/created-for/pv/name\":\"pvc-266ae6e2-ad3f-4c18-81f7-eae4ba3073b3\",\"kubernetes.io/created-for/pvc/name\":\"airflow-redis-volume-airflow-redis-0\",\"kubernetes.io/created-for/pvc/namespace\":\"composer-system\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"

  labels = {
    goog-composer-environment      = "composer"
    goog-composer-environment-uuid = "f18c9b57-deaa-4a7a-b0ce-1f0b9c925c64"
    goog-composer-location         = "us-central1"
    goog-composer-version          = "composer-2-9-9-airflow-2-9-3"
    goog-gke-cluster-id-base32     = "6izxrdb3dbffbnzext3gkuxkwhshwyadmyhevgumwchukoyxod3q"
    goog-gke-cost-management       = ""
    goog-gke-volume                = ""
    goog-k8s-cluster-location      = "us-central1"
    goog-k8s-cluster-name          = "us-central1-composer-57cc2238-gke"
    goog-k8s-node-pool-name        = "pool-3"
  }

  name                      = "pvc-266ae6e2-ad3f-4c18-81f7-eae4ba3073b3"
  physical_block_size_bytes = 4096
  project                   = "dt-sandbox-service-proj"
  size                      = 2
  type                      = "pd-standard"
  zone                      = "us-central1-a"
}
# terraform import google_compute_disk.pvc_266ae6e2_ad3f_4c18_81f7_eae4ba3073b3 projects/dt-sandbox-service-proj/zones/us-central1-a/disks/pvc-266ae6e2-ad3f-4c18-81f7-eae4ba3073b3
