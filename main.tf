provider "google" {
  project     = "bright-eon-368611"
  region      = "us-west4-b"
  zone        = "us-west4-b"
  credentials = file("${path.module}/bright-eon-368611-9c76303809ff.json")
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}