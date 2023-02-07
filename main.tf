provider "google" {
  project     = "bright-eon-368611"
  region      = "us-west4-b"
  zone        = "us-west4-b"
  credentials = file("${path.module}/bright-eon-368611-9c76303809ff.json")
}

data "google_compute_instance" "foo" {
  name = "instance-1"
}

output "my_vm_list" {
  value = "${data.google_compute_instance.foo.*}"
}