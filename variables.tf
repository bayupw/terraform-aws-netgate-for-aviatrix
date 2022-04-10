variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "egress_subnet_id" {
  description = "Existing egress subnet (e.g. avx-ap-southeast-2-transit-Public-FW-ingress-egress-ap-southeast-2a) subnet ID"
  type        = string
}

variable "lan_subnet_id" {
  description = "Existing lan subnet (e.g. aviatrix-avx-ap-southeast-2-transit-dmz-firewall) subnet ID"
  type        = string
}

variable "az_suffix" {
  type        = string
  description = "AZ suffix"
  default     = "a"
}

variable "fw_instance_name" {
  type        = string
  default     = "netgate"
  description = "Firewall hostname"
}

variable "fw_admin_password" {
  type        = string
  default     = "Aviatrix123#"
  description = "Firewall admin password"
}

variable "mgmt_net" {
  type        = string
  default     = "0.0.0.0/0"
  description = "Specify network to be restricted for management access (http, https, ssh) e.g. 10.0.0.0/24"
}

variable "firenet_gw_name" {
  type        = string
  default     = "aviatrix-firenet-gw"
  description = "Existing Aviatrix FireNet gateway name"
}

variable "key_name" {
  type        = string
  default     = null
  description = "Existing SSH public key name"
}

variable "fw_instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}