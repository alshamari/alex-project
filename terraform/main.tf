provider "google" {
  project     = "centering-force-290618"
  region      = "us-central1"
}


resource "google_compute_instance" "default" {
  name         = "myapp"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

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

resource "google_sql_database" "database" {
  name     = "my-database"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name   = "my-database-instance"
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}
