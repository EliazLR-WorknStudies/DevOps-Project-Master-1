# On détermine la version du provider OpenStack à utiliser
terraform {
  required_providers {
    openstack = {
      source = "terraform-providers/openstack"
    }
    ovh = {
      source = "ovh/ovh"
    }
  }
  required_version = ">= 1.0.0"
}

# On demande à Terraform d'utiliser le provider téléchargé à l'instant
provider "openstack" {
  cloud = "TerraformPCEliaz"
}

provider "ovh" {
  endpoint           = "ovh-eu"
  application_key    = var.application_key
  application_secret = var.application_secret
  consumer_key       = var.consumer_key
}

# terraform {
#   backend "http" {
#     address = "https://terraform-backend.edu.forestier.re/elleriche"
#   }
# }
