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

# Download the latest Ghost image
resource "docker_image" "image_id" {
  name = "${var.image}"
}

# Start the Container
resource "docker_container" "container_id" {
  name  = "${var.dockercontainer_name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.internal_port}"  #default internal port for ghost. 
    external = "${var.external_port}"
  }
}
#Output the IP Address of the Container
output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
  value = "${docker_container.container_id.name}"
}

output "dockerimage_name" {
  value = "${docker_image.image_id.name}"
}
