variable "token" {
  type = string
}

variable "ssh_username" {
  type = string
  default = "root"
}

variable "location" {
  type = string
  default = "nbg1"
}

variable "image" {
  type = string
  default = "ubuntu-22.04"
}

variable "size" {
  type = string
  default = "cx31"
}

variable "snapshot_tags" {
  type = map(string)
  default = {}
}
