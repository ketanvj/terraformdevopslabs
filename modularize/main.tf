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
