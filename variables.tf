variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the droplet creation."
}

variable "label_order" {
  type        = list(string)
  default     = [""]
  description = "Label order, e.g. `name`,`application`."
}

variable "name" {
  type        = string
  default     = ""
  description = "A name for the VPC. "
}

variable "region" {
  type        = string
  default     = ""
  description = "The DigitalOcean region slug for the VPC's location."
}
variable "managedby" {
  type        = string
  default     = "example"
  description = "ManagedBy, eg 'sohanyadav'."
}

variable "ip_range" {
  type        = string
  default     = ""
  description = "The range of IP addresses for the VPC in CIDR notation."
}

variable "description" {
  type    = string
  default = "A free-form text field up to a limit of 255 characters to describe the VPC."
}