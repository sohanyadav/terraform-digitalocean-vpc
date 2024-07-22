#Description : This Script is used to create VPC.
#Module      : LABEL

module "labels" {
  source      = "git::https://github.com/sohanyadav/terraform-digitalocean-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  label_order = var.label_order
  managedby   = var.managedby
}

##--------------------------------------------------------------------------------------------
#resource :This resource for VPC
##--------------------------------------------------------------------------------------------

resource "digitalocean_vpc" "test" {
  count       = var.enabled ? 1 : 0
  name        = format("%s-vpc", module.labels.id)
  region      = var.region
  ip_range    = var.ip_range
  description = var.description
}
