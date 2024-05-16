resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
resource "random_uuid" "uuid" {
}

output "FAKE_INIT_OUTPUT" {
  value = uuid.result
}