resource "google_compute_instance" "nonprod_vm" {
  name         = "nonprod-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  project = module.cs-svc-nonprod1-svc-j8yh.project_id

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
