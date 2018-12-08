# --------aws/output.tf-----------

output "Bucket Name" {
  value = "${module.storage.bucketname}"

}
