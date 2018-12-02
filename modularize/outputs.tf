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

