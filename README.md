# Terraform AWS Module - Netgate pfSense Plus Firewall for Aviatrix

Terraform module to deploy Netgate pfSense Plus Firewall EC2 instance into existing Transit VPC for Aviatrix Firenet integration
https://docs.netgate.com/pfsense/en/latest/solutions/aws-vpn-appliance/launching-an-instance.html
https://docs.aviatrix.com/HowTos/config_PFsense.html

## Usage with minimal customisation with default admin password: Aviatrix123#

```hcl
module "netgate" {
  source  = "bayupw/netgate-for-aviatrix/aws"
  version = "1.0.0"

  vpc_id            = "vpc-0a1b2c3d4e"
  egress_subnet_id  = "subnet-0a1b2c3d4e"
  lan_subnet_id     = "subnet-1b2c3d4e5f"
}
```

## Usage with customisation on firewall instance details

```hcl
module "netgate" {
  source  = "bayupw/netgate-for-aviatrix/aws"
  version = "1.0.0"

  vpc_id            = "vpc-0a1b2c3d4e"
  egress_subnet_id  = "subnet-0a1b2c3d4e"
  lan_subnet_id     = "subnet-1b2c3d4e5f"
  az_suffix         = "a"
  fw_instance_type  = "t3.small"
  fw_instance_name  = "netgate-vm"
  fw_admin_password = "Aviatrix123#"
  key_name          = "ec2-keypair"
}
```

## Contributing

Report issues/questions/feature requests on in the [issues](https://github.com/bayupw/terraform-aws-netgate-vm-for-aviatrix/issues/new) section.

## License

Apache 2 Licensed. See [LICENSE](https://github.com/bayupw/terraform-aws-netgate-vm-for-aviatrix/tree/master/LICENSE) for full details.
