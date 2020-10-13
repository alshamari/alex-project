provider "google" {
  project     = "peak-brook-290921"
  region      = "us-east1"
}


resource "google_compute_instance" "default" {
  name         = "myapp"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"

  tags = ["http", "https"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    env = "dev"
  }

  metadata_startup_script = "${file("startup")}"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}


