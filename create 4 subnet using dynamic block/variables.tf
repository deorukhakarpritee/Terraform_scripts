variable "name" {

  type = string

}

variable "location" {

  type = string

}

variable "vnet_name" {

  type = string

}
variable "address_space" {

  type = list(any)

}


variable "subnets" {
  description = "list of values to assign to subnets"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
