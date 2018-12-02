variable "image" {
description = "container image name"
  default = "ghost:latest"
}

variable "dockercontainer_name" {
  description = "Name of the container"
  default = "myblog"
}

variable "internal_port" {
  description = "Internal port"
  default = "2368"
}

variable "external_port" {
  description = "External port"
  default = "80"
}
