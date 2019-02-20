variable network_name {
  default     = "newnet"
  type        = "string"
  description = "The network name for the GCP"
}

variable gcp_ip_cidr_range {
  default     = "10.0.0.0/16"
  type        = "string"
  description = "IP CIDR range for Google VPC"
}

variable subnets_names {
  type = "map"

  default = {
    subnet1 = "subnetone"
    subnet2 = "subnettwo"
    subnet3 = "subnetthree"
  }
}
