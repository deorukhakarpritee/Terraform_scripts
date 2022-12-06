name          = "rg11"
location      = "west us2"
vnet_name     = "vnet"
address_space = ["10.10.0.0/16"]
subnets = [
  { name = "snet1", address_prefix = "10.10.1.0/24" },
  { name = "snet2", address_prefix = "10.10.2.0/24" },
  { name = "snet3", address_prefix = "10.10.3.0/24" },
  { name = "snet4", address_prefix = "10.10.4.0/24" },
]
