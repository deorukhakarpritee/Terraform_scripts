variable "prefix" {
  type    = string
  default = "lab1"

}

variable "location" {
  type = string

}

variable "storage_account_name" {
  type = string

}

variable "account_tier" {
  type = string

}

variable "account_replication_type" {
  type = string

}

variable "address_space" {

  type = list(any)

}

variable "subnet_name" {

  type = list(any)

}

variable "subnet_range" {

  type = list(any)

}
